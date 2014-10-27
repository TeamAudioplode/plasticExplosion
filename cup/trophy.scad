module oRing(inner_diameter, outer_diameter)
{
//inner_diameter = 10;
//outer_diameter = 12.4;

rotate_extrude(convexity = 10, $fn = 100)
translate([(inner_diameter+outer_diameter)/4, 0, 0])
circle(r = (outer_diameter - inner_diameter)/2, $fn = 50); 

}

cenh = 250;
rad = 197;
rad2 = rad+15;
toph = 200;
both = 100;



#cylinder(h=both+470, r=rad,$fn=100);

module doughnut(inner_diameter, doughnut_radius, sprinkle_count, sprinkle_radius, sprinkle_length)
{
seed1=42;
seed2=50;
seed3=60;
oRing(inner_diameter, inner_diameter + (2*doughnut_radius));

// Generate sprinkles!

sprinkle_angles1 = rands(0,360,sprinkle_count,seed1);
sprinkle_angles2 = rands(0,360,sprinkle_count,seed2);
sprinkle_offsets = rands(-doughnut_radius/2, doughnut_radius/2, sprinkle_count,seed3);

for(i = [1:sprinkle_count])
{
	assign(sprinkle_h = sqrt(doughnut_radius*doughnut_radius - sprinkle_offsets[i]*sprinkle_offsets[i]))
{

assign(sprinkle_r = acos(sprinkle_offsets[i]/doughnut_radius))
{


	rotate([0,0,sprinkle_angles1[i]]) translate([inner_diameter-doughnut_radius+sprinkle_offsets[i],doughnut_radius,sprinkle_h+5]) rotate([90,0,sprinkle_angles2[i]]) rotate([sprinkle_r+90,0,0]) cylinder(r=sprinkle_radius, h=sprinkle_length);
}
}
}

}
doughd = 200;
doughr = 80;
doughh = 320;


translate([(doughd/2+80),0,doughh]) rotate([90,0,0]) doughnut(doughd, doughr, 100, 4, 25);
translate([-(doughd/2+80),0,doughh]) rotate([90,0,0]) doughnut(doughd, doughr, 100, 4, 25);




*difference()
{

union()
{

translate([0,0,both]) difference()
{
union()
{
difference()
{

union()
{
translate([0,0,0]) cylinder(h=cenh, r=rad,$fn=100);

difference()
 {
	translate([0,0,cenh]) cylinder(h=toph, r1=rad+6, r2=rad2, $fn=100);

	translate([0,0,cenh+30]) rotate_extrude(convexity=10, $fn=80) translate([rad+6,0,0]) rotate([0,90,0]) circle(r=4);


	translate([0,0,cenh+120]) rotate_extrude(convexity=10, $fn=80) translate([rad2-5,0,0]) rotate([0,90,0]) circle(r=4);

}



for(i = [0:10:360])
{
union()
{
	rotate([0,2,i]) translate([rad-7,0,5]) scale([1,1.5,1]) cylinder(h=cenh, r=10,$fn=20);

	rotate([0,0,i]) translate([rad-7,0,-1]) scale([1,1.5,1]) sphere(h=cenh, r=10,$fn=20);

	rotate([0,0,i]) translate([rad+2,0,cenh-1]) scale([1,1.5,1]) sphere(h=cenh, r=10,$fn=20);
}

}


}

	translate([0,0,cenh+10]) rotate_extrude(convexity=10, $fn=80) translate([rad+7,0,0]) rotate([0,90,0]) circle(r=2);

}

 translate([0,0,cenh+toph])  rotate_extrude(convexity=10, $fn=80) translate([rad+10,0,0]) scale([1.25,1.25,1.0]) rotate([0,90,0]) circle(r=15);

}

	translate([0,0,-5]) cylinder(h=cenh+toph+10, r1=rad-21, r2=rad2-20, $fn=100);

}


translate([0,0,both]) rotate_extrude(convexity=10) translate([rad-10,0,0]) rotate([0,90,0]) circle(r=10);

translate([0,0,0]) cylinder(h=both, r1=rad-7, r2=rad-15, $fn=100);

}

translate([0,0,0]) rotate_extrude(convexity=10, $fn=80) translate([rad-5,0,0]) rotate([0,90,0]) circle(r=10);

}

