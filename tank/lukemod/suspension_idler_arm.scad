//arm to hold the idler wheel.  hinged in middle, wheel at one end and spring at the other.

//from the side on it is an L, from the top it is an Y

//planning to use an M2.5 bolt to hold the spring at either end
use <../roundedArm.scad>;

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
armLength=10 + idlerRadiusAllowance;

//height of arm which holds the spring
//springArmLength=

springArmLength=20;

//same as idler?
axleRadius = 1;

springArmOffset = 5;

triangleJoinsX=armHeight/2;


roundedArm(armThick,armHeight,armLength,axleRadius);
translate([armLength+idlerRadiusAllowance,gapWidth/2+armThick/2,0]) rotate([0,0,180])  roundedArm(armThick,armHeight,idlerRadiusAllowance,axleRadius);
translate([armLength+idlerRadiusAllowance,-gapWidth/2-armThick/2,0]) rotate([0,0,180])  roundedArm(armThick,armHeight,idlerRadiusAllowance,axleRadius);

//triangly bit to link the arms together
linear_extrude(height=armHeight) polygon([[armLength,-gapWidth/2-armThick],[armLength-armThick,-gapWidth/2-armThick],[triangleJoinsX,-armThick/2],[triangleJoinsX,armThick/2],[armLength-armThick,gapWidth/2+armThick],[armLength,gapWidth/2+armThick]]);


//arm upwards for spring
//translate([-armHeight/2,-armThick/2,armHeight/2]) cube([armHeight,armThick,50]);
translate([armHeight/2,0,armHeight/2]) rotate([0,-90,0]) roundedArm(armThick,armHeight,50,axleRadius);


//translate([0,20,armHeight/2]) rotate([90,0,0]) cylinder(r=axleRadius, h= 60, $fn = 30);