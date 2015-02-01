
distance = 2;

height = 10;
increment = 0.1;
gap = 5;
start = 1.8;

count = 4;

rotate([0,90,0])
difference(){
cube([10,42,height]);

union(){






for (i = [0:count])
{

assign(distance = distance +  gap+increment*i)

translate([5,gap + distance*i+ 0.4*i,height/2 ]) rotate([0,90,0]) translate([0,0,-10]) 	cylinder(r=start+increment*i,h=20,$fn=20);

}

}
}

