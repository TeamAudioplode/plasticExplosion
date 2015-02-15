faces=25;
length=35;
width=30;
depth=10;
meeple_depth=9;
meeple_height=8;
sprue_radius=0.75;
air_hole_radius=0.5;
model_depth=depth-(meeple_depth*0.5);
difference()
{
	//mould
	translate([-length*0.5,-width*0.5-(meeple_height*0.3),0]){cube(size=[length,width,depth]);}
	
	
	union()
	{
		//air hole
		translate([0,0,-15]){rotate([0,0,0]){cylinder(r=air_hole_radius,h=30,$fn=faces);}} 

		//sprue
		translate([4.5,-7,depth]){rotate([90,90,0]){cylinder(r1=sprue_radius,r2=sprue_radius*3,h=16,$fn=faces);}} 

		//meeple
		translate([-8,-8,model_depth])
		{
			union()
			{
				import("Meeple.stl");
				translate([0,0,3]){import("Meeple.stl");}
			}
		}
	}

}
