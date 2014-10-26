//arm to hold the idler suspension arms. two hinges on either side and a means of attaching to the chassis

//looking from the top down it is an H

//tracks ahve a gap of 0.145 between plastic that rubs together
gap=0.15;
suspensionArmThick = 5;

gapWidth = suspensionArmThick  + gap;

armThick=5;
armHeight=10;

//how much space between the axle of the idler and anything else
idlerRadiusAllowance = 8.73 + 2;
hingeRadiusAllowance = armHeight;


//distance between hingle axle and idler axle
armLength= hingeRadiusAllowance*2 + armHeight;

//hingeArmLength=10;

//same as idler?
axleRadius = 1;

springArmOffset = 5;

distanceFromChassis=20;


difference(){

	union(){
		//arm between hinge and idler wheel

		translate([0,-armThick-gapWidth/2,0]) cube([armLength,armThick,armHeight]);

		translate([0,-gapWidth/2,armHeight/2]) rotate([90,0,0]) cylinder(r=armHeight/2, h= armThick, $fn = 50);
		
		translate([armLength,-gapWidth/2,armHeight/2]) rotate([90,0,0]) cylinder(r=armHeight/2, h= armThick, $fn = 50);
		
		translate([0,gapWidth/2,0]) cube([armLength,armThick,armHeight]);

		translate([0,armThick + gapWidth/2,armHeight/2]) rotate([90,0,0]) cylinder(r=armHeight/2, h= armThick, $fn = 50);
		
		translate([armLength,armThick + gapWidth/2,armHeight/2]) rotate([90,0,0]) cylinder(r=armHeight/2, h= armThick, $fn = 50);


		translate([hingeRadiusAllowance,-gapWidth/2,0 ]) cube([armHeight,distanceFromChassis+gapWidth+armThick,armHeight]);
	//translate([-armThick/2 + springArmOffset,-armThick/2,armThick])cube([armThick,armThick,hingeArmLength]);
	
	}

	//hinge hole
	translate([0,20,armHeight/2]) rotate([90,0,0]) cylinder(r=axleRadius, h= 60, $fn = 30);
	
	//idler axle hole
	translate([armLength ,40 ,armHeight/2]) rotate([90,0,0]) cylinder(r=axleRadius, h= 80, $fn = 30);

}

