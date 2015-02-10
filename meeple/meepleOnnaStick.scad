union(){
import("Meeple.stl");
translate([0,0,3]){import("Meeple.stl");}
translate([8,8,7]){cylinder([1,2,1], h=12,r=3,$fn=6);}
}
