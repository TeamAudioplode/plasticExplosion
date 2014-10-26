

//armlength is from the centre of the hole to the end of the flat end
module roundedArm(armWidth,armHeight,armLength,holeRadius){

difference(){
union(){
			translate([0,-armWidth/2,0]) cube([armLength,armWidth,armHeight]);

			
				translate([0,armWidth/2,armHeight/2]) rotate([90,0,0]) cylinder(r=armHeight/2, h= armWidth, $fn = 50);
			}


if(holeRadius > 0){
	translate([0,armWidth/2+1,armHeight/2]) rotate([90,0,0]) cylinder(r=holeRadius, h= armWidth+2, $fn = 30);
}		

}

}

roundedArm(10,10,30,2);