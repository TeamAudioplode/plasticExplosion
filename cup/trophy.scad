cenh = 250;
rad = 197;
rad2 = rad+15;
toph = 200;
both = 100;


difference()
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

