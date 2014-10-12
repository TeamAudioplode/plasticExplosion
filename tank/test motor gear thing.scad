
height = 4;
wiggle = 0.1;

union(){
difference(){
cylinder(r=8,h=height,$fn=1000);
translate([0,0,-1])cylinder(r=2+wiggle,h=10,$fn=1000);
}

translate([1.75+wiggle,-5,0]) cube([4,8,height]);

}

translate([3,-1,0]) cube([4,2,height+0.5]);