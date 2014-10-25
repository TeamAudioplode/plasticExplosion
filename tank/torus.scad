module oRing(inner_diameter, outer_diameter)
{
//inner_diameter = 10;
//outer_diameter = 12.4;

rotate_extrude(convexity = 10, $fn = 100)
translate([(inner_diameter+outer_diameter)/4, 0, 0])
circle(r = (outer_diameter - inner_diameter)/2, $fn = 50); }

oRing(10,12.4);
