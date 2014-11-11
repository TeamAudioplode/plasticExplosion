
distance = 2;

height = 5;
increment = 0.5;


difference(){
cube([5,50,10]);

union(){






for (i = [1:10])
{

assign(distance = distance +  0.5+0.05*i)

translate([5,distance*i+ 0.4*i,height/2.0 ]) rotate([0,90,0]) translate([0,0,-10]) 	cylinder(r=0.7+0.05*i,h=10,$fn=20);

}

}
}

