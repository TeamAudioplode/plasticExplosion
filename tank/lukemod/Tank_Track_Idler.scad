use <../torus.scad>;

scale = 0.5;
//used for how many mm to add to radius for things to slot onto the motor axle.
wiggle = 0.2;

smallR = 6.4;
bigR = 8.73;

smallRHeight=5.46;
bigRHeight = 4.31;//9.77-5.46;id
//total height = 15.23mm

//hoping to use the steel wire rather than a bearing.  for the tracks used 0.8, but this needs to be a little more free running
axleRadius = 1;

oRingThick = 1.7;

//outer diameter for the o-ring = 13.65mm
//inner diameter for the o-ring = 11.95mm


height = 15.24;

difference(){
union(){
//central 'wheel' for running in the inside gap
translate([0,0,smallRHeight]) cylinder(r=bigR,h=bigRHeight, $fn=300);

//for holding the o-rings
cylinder(r=smallR, h=height, $fn=300);
}

//

union(){

translate([0,0,smallRHeight/2]) oRing(smallR*2-oRingThick/2,smallR*2 + oRingThick/2);
translate([0,0,smallRHeight/2 + smallRHeight + bigRHeight]) oRing(smallR*2-oRingThick/2,smallR*2 + oRingThick/2);

//axle
translate([0,0,-1]) cylinder(r=axleRadius,h=20, $fn = 50);
}
}
