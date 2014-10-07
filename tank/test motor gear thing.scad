
union(){
difference(){
cylinder(r=15,h=8,$fn=1000);
translate([0,0,-1])cylinder(r=2,h=10,$fn=1000);
}

translate([1.75,-5,0]) cube([10,10,8]);

}

translate([3,-1,0]) cube([10,2,9]);