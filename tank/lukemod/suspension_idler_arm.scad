//arm to hold the idler wheel.  hinged in middle, wheel at one end and spring at the other

//tracks ahve a gap of 0.145
gap=0.15;
idlerWidth = 15.23;
idlerRadiusAllowance = 8.73 + 2;

armThick=10;
armLength=10;

springArmLength=20;

//same as idler?
axleRadius = 1;

springArmOffset = 5;


idlerHolderWidth = idlerWidth + gap + armThick*2;

difference(){

	union(){
		//arm between hinge and idler wheel
		union(){
			translate([0,-armThick/2,]) cube([armLength,armThick,armThick]);

			translate([0,armThick/2,armThick/2]) rotate([90,0,0]) cylinder(r=armThick/2, h= armThick, $fn = 50);
			}

	#translate([-armThick/2 + springArmOffset,-armThick/2,armThick])cube([armThick,armThick,springArmLength]);
	
	
	//Y fork for idler to sit in
	
	translate([armLength,-idlerHolderWidth/2,0]) cube([armThick,idlerHolderWidth,armThick]);
	
	translate([armThick+armLength,-idlerHolderWidth/2 ,0]) cube([idlerRadiusAllowance ,armThick,armThick]);
	translate([armLength + idlerRadiusAllowance + armThick,armThick-idlerHolderWidth/2 ,armThick/2]) rotate([90,0,0]) cylinder(r=armThick/2, h= armThick, $fn = 30);

	}

	//hinge hole
	translate([0,10,armThick/2]) rotate([90,0,0]) cylinder(r=axleRadius, h= 20, $fn = 30);
	
	//idler axle hole
	translate([armLength + idlerRadiusAllowance + armThick,40 ,armThick/2]) rotate([90,0,0]) cylinder(r=axleRadius, h= 80, $fn = 30);

}

