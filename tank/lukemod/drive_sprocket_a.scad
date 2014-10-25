scale = 0.5;
//used for how many mm to add to radius for things to slot onto the motor axle.
wiggle = 0.2;

//at a scale of 0.5 the o-ring gap seems to be for an o-ring with a thickness of 1.82mm (~14th of an inch)
//o ring has an inner radius of about 7.47mm
//therefore o-ring needs outer diameter of 12.58mm (nearly 1/2")

height = 15.24;

difference(){
	union(){
		scale([scale,scale,scale]) import("../originals/Tank_drive_sprocket_A_fixed.stl");

		//fill in centre of original sprocket
		cylinder(r=7, h=height);
	}
	//punch hole through whole thing
	translate([0,0,-2])cylinder(r=2+wiggle, h=20, $fn=100);
}

//notch for axle
translate([1.75+wiggle,-5,0]) cube([2,8,height]);

//something to mark the notch

translate([3,-1,height-0.5]) cube([3,2,1]);

//union(){
//difference(){
//cylinder(r=8,h=height,$fn=1000);
//translate([0,0,-1])cylinder(r=2+wiggle,h=10,$fn=1000);
//}



//}