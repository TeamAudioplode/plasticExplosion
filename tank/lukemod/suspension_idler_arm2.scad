//arm to hold the idler wheel.  hinged in middle, wheel at one end and spring at the other.

//from the side on it is an L, from the top it is an Y

//planning to use an M2.5 bolt to hold the spring at either end

//tracks ahve a gap of 0.145 between plastic that rubs together
gap=0.15;
idlerHeight = 15.23;

gapWidth = idlerHeight + gap;

armThick=5;
armHeight=10;

//how much space between the axle of the idler and anything else
idlerRadiusAllowance = 8.73 + 2;
hingeRadiusAllowance = armHeight;


//distance between hingle axle and idler axle
armLength=armHeight + idlerRadiusAllowance;

springArmLength=20;

//same as idler?
axleRadius = 1;

springArmOffset = 5;


difference(){

	union(){
		//arm between hinge and idler wheel
		union(){
			translate([0,-armThick-gapWidth/2,0]) cube([armLength,armThick,armHeight]);

			translate([0,-gapWidth/2,armHeight/2]) rotate([90,0,0]) cylinder(r=armHeight/2, h= armThick, $fn = 50);
			
			translate([armLength,-gapWidth/2,armHeight/2]) rotate([90,0,0]) cylinder(r=armHeight/2, h= armThick, $fn = 50);
			}

	translate([-armThick/2 + springArmOffset,-armThick/2,armThick])cube([armThick,armThick,springArmLength]);
	
	}

	//hinge hole
	translate([0,20,armHeight/2]) rotate([90,0,0]) cylinder(r=axleRadius, h= 60, $fn = 30);
	
	//idler axle hole
	translate([armLength ,40 ,armHeight/2]) rotate([90,0,0]) cylinder(r=axleRadius, h= 80, $fn = 30);

}

