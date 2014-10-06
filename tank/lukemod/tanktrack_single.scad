scale = 0.5;
holeRadius = 0.75;
//0.4*scale

rotate([0,0,90])
difference()
{
   scale([scale, scale, scale]) import("../originals/Tank_Track_2in_single.stl");
	
	union()
	{
	//	#translate([0,5,-1]) cylinder(r=1 , h=5, $fn=15);
	//	#translate([0,-5,-1]) cylinder(r=1 , h=5, $fn=15);
		#rotate([90,0,0]) translate([-4.9*scale/0.5,4.1*scale/0.5,-5*scale/0.5]) cylinder(r=holeRadius , h=10, $fn=15);
		#rotate([90,0,0]) translate([4.9*scale/0.5,4.1*scale/0.5,-10*scale/0.5]) cylinder(r=holeRadius , h=20, $fn=15);
	}
};