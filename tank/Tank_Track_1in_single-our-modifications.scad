

difference()
{
   scale([0.5, 0.5, 0.5]) import("Tank_Track_2in_single.stl");
	
	union()
	{
		#translate([0,5,-1]) cylinder(r=1 , h=5, $fn=15);
		#translate([0,-5,-1]) cylinder(r=1 , h=5, $fn=15);
		#rotate([90,0,0]) translate([-4.9,4.1,-5]) cylinder(r=0.8 , h=10, $fn=15);
		#rotate([90,0,0]) translate([4.9,4.1,-10]) cylinder(r=0.8 , h=20, $fn=15);
	}
}