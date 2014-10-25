scale = 0.5;
holeRadius = 0.8;
//0.4*scale


//at scale of 0.5, inner gap = 4.6mm wide
//outer gap = 9.95
//total outness = 15.01
//thickness = 2.53
//therefore space of 0.145 on each side

rotate([0,0,90])
difference()
{
	union(){
   scale([scale, scale, scale]) import("../originals/Tank_Track_2in_single.stl");
	translate([0,5,0]) cylinder(r=1.2*scale , h=5, $fn=15);
	translate([0,-5,0]) cylinder(r=1.2*scale , h=5, $fn=15); 	
}

	union()
	{
	//	#translate([0,5,-1]) cylinder(r=1 , h=5, $fn=15);
	//	#translate([0,-5,-1]) cylinder(r=1 , h=5, $fn=15);
		rotate([90,0,0]) translate([-4.9*scale/0.5,4.1*scale/0.5,-5*scale/0.5]) cylinder(r=holeRadius , h=10, $fn=15);
		rotate([90,0,0]) translate([4.9*scale/0.5,4.1*scale/0.5,-10*scale/0.5]) cylinder(r=holeRadius , h=20, $fn=15);
	}
};


test=15.01;

//#translate([-test/2,0,0]) cube([test,10,10]);