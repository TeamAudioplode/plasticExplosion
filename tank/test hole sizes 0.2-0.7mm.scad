
distance = 2;

difference(){
cube([2.5,37,5]);

union(){






for (i = [1:10])
{

assign(distance = distance +  0.5+0.05*i)

translate([5,distance*i+ 0.4*i,2.5 ]) rotate([0,90,0]) translate([0,0,-10]) 	cylinder(r=0.2+0.05*i,h=10,$fn=20);

}

//distance = distance+2.5;

//translate([5,distance,2.5]) rotate([0,90,0]) translate([0,0,-10]) 	cylinder(r=0.5,h=10,$fn=20);
}
}

