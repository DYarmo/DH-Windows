

windowrad = 2.8;
vOffset = -0.34;
mlOffsetmm = 0.0;
rcOffsetmm = 0;

X = 0.02; //amount to stretch horizontally including slots
sF = 0.5/25.4;// ammount to truncate slots
sF = 0.5/25.4;// ammount to truncate slots

mlOffset = mlOffsetmm/25.4;
rcOffset = rcOffsetmm/25.4;

rad = 2.8;//25.4; //radius of window (top part). 2.55 is too small 2.8 is too big
windowRad = rad/25.4;


//scale([1,1,1]) rotate([90,0,0]) translate([0.12*25.4,vOffset, -0.2*25.4]) rotate([0,0,0]) import("C:\\Users\\David\\Dropbox (BCH)\\3D files\\Baseplates\\Miniscope baeplates\\Miniscope V4 baseplates\\Miniscope_v4_Baseplate_Var_2.stl", convexity = 2);


 
{translate([(0.17*-25.4)+3,(0.18*-25.4)-3,0]) translate([0,0,0])
  
   
    
scale([25.4,25.4,25.4]){ // units below are in inches, scaling converts to millimeter





difference(){

color([0.5,0.5,0.5,1]) union(){

//main block
    union(){
        
       
        
translate([-0.02-X,-0.04,0])cube([0.38+2*X, 0.44, 0.06], center = false);

    //apron 1 for attachment to skin; (rostral bent down)
        difference(){
            union(){
        translate([0.17,-0.0,0.025]) rotate([15,0,0]) cylinder(0.05,0.193+X,0.06,$fn=100);
        translate([0.17,-0.0,0.01]) rotate([15,0,0]) cylinder(0.015,0.19+X,0.19+X,$fn=100);
            }
            
            translate([-0.1,-0.03,-0.02])  rotate([0,0,0]) cube([0.50,0.44,0.161]);
        }
        
        //apron 2 for attachment to skin;
        difference(){
            union(){
        translate([0.17,0.36,0.015 ]) cylinder(0.045,0.193+X,0.06,$fn=100);
                translate([0.17,0.36,0]) cylinder(0.015,0.193+X,0.193+X,$fn=100);
            }
        translate([-0.1,-0.04,-0.01])   cube([0.50,0.44,0.061]);
        }

       //fixation post rostral:
		translate([0.17,0.42,0.09]) rotate([0,0,0]) cylinder(0.1,0.09,0.09, $fn=100);
       translate([0.17,0.42,0.09]) rotate([0,0,0]) sphere(0.09, $fn=100);
		 
		
		
		//fixation post caudal:
		translate([0.17,-0.06,0.09]) rotate([0,0,0]) cylinder(0.1,0.09,0.09, $fn=100);
       translate([0.17,-0.06,0.09]) rotate([0,0,0]) sphere(0.09, $fn=100);
		
		
		
		
    }
}


//translate([0.049,0.065,0.0242]) cube([0.24,0.23,0.3]);
//translate([-0.041,0.15,0.035]) cube([12/25.4,1.5/25.4,0.91/25.4]);

     //Fixation hole for 0-40 screw to couple to adaptor
	 translate([0.17,0.60,0.11]) rotate([90,0,0]) cylinder(1,0.05, 0.05, $fn=100);

	//truncate post to not interfere with scope:
	translate([.06,0.34,0.13]) rotate([45,0,0]) cube([0.2,0.1,0.1]);
    translate([.06,0.-0.04,0.19]) rotate([-45,0,0]) cube([0.2,0.1,0.1]);

    //Hole for window
    translate([0.17, 0.18, -0.02 ]) rotate([0, 0, 0]) cylinder(0.1, 0.14, 0.14, false, $fn = 300);
   



//Cutting out corners of block to match sleeve

color([1,0,0]) translate([0.1720, 0.1781, -0.02 ]) translate([0.0577+mlOffset, 0.0577+rcOffset, 0 ]) rotate([0, 0, 0]) cylinder(1.60, 0.041, 0.041, false, $fn = 300);
color([1,0,0]) translate([0.1720, 0.1781, -0.02 ]) translate([0.0577+mlOffset, -0.0577+rcOffset, 0 ]) rotate([0, 0, 0]) cylinder(1.60, 0.041, 0.041, false, $fn = 300);
color([1,0,0]) translate([0.1720, 0.1781, -0.02 ]) translate([-0.0577+mlOffset, 0.0577+rcOffset, 0 ]) rotate([0, 0, 0]) cylinder(1.60, 0.041, 0.041, false, $fn = 300);
color([1,0,0]) translate([0.1720, 0.1781, -0.02 ]) translate([-0.0577+mlOffset, -0.0577+rcOffset, 0 ]) rotate([0, 0, 0]) cylinder(1.60, 0.041, 0.041, false, $fn = 300);


color([0,1,0]) translate([0.1720-0.041, 0.1781, -0.02 ]) translate([-0.0577+mlOffset, -0.0577+rcOffset, 0 ]) rotate([0, 0, 0]) cube([0.1154+0.082,0.1154,1.6]);
color([0,1,1]) translate([0.1720, 0.1781-0.041, -0.02 ]) translate([-0.0577+mlOffset, -0.0577+rcOffset, 0 ]) rotate([0, 0, 0]) cube([0.1154,0.1154+0.082,1.6]);

//Thru hole for fixing to microscope stage
//translate([0, 0.3, 0]) translate([-0.17, -0.12, 0.1+vOffset/25.4]) rotate([90, 0, 90]) cylinder(1.6, 1.25/25.4, 1.25/25.4, false, $fn = 100);



//First Slot

{
	 translate([0.04-X, 0.04, 0.00]) rotate([0, 0, 0]) cylinder(0.06, 0.018, 0.018, false, $fn = 100);
}

{
	color([1,0,0]) translate([-sF,0,0]) translate([0.09, 0.04, 0.00]) rotate([0, 0, 0]) cylinder(0.06, 0.018, 0.018, false, $fn = 100);
}

{
	translate([0.04-X, 0.022, 0.00]) rotate([0, 0, 0]) cube(size = [X+0.05-sF, 0.036, 0.12], center = false);
}
////First Slot for screw head
{
translate([0.04-X, 0.04, 0.02]) rotate([0, 0, 0]) cylinder(0.06, 0.037, 0.037, false, $fn = 100);
}

{
	translate([0.09-sF, 0.04, 0.02]) rotate([0, 0, 0]) cylinder(0.06, 0.037, 0.037, false, $fn = 100);//adjust
}

{
	translate([0.04-X, 0.003, 0.02]) rotate([0, 0, 0]) cube(size = [X+0.05-sF, 0.074, 0.3], center = false);
}

//Second Slot

{
	translate([0.3+X, 0.04, 0.00]) rotate([0, 0, 0]) cylinder(0.06, 0.018, 0.018, false, $fn = 100);
}

{
	translate([0.25+sF, 0.04, 0.00]) rotate([0, 0, 0]) cylinder(0.06, 0.018, 0.018, false, $fn = 100);
}

{
	translate([0.25+sF, 0.022, 0.00]) rotate([0, 0, 0]) cube(size = [X+0.05-sF, 0.036, 0.12], center = false);
}

////Second Slot for screw head
{
	translate([0.3+X, 0.04, 0.02]) rotate([0, 0, 0]) cylinder(0.06, 0.037, 0.037, false, $fn = 100);
}

{
	translate([0.25+sF, 0.04, 0.02]) rotate([0, 0, 0]) cylinder(0.06, 0.037, 0.037, false, $fn = 100);//adjust
}

{
	translate([0.25+sF, 0.003, 0.02]) rotate([0, 0, 0]) cube(size = [X+0.05-sF, 0.074, 0.3], center = false);
}

//Third Slot

{
	translate([0.04-X, 0.32, 0.00]) rotate([0, 0, 0]) cylinder(0.06, 0.018, 0.018, false, $fn = 100);
}

{
	color([1,0,1]) translate([0.09-sF, 0.32, 0.00]) rotate([0, 0, 0]) cylinder(0.06, 0.018, 0.018, false, $fn = 100);
}

{
	translate([0.04-X, 0.302, 0.00]) rotate([0, 0, 0]) cube(size = [X+0.05-sF, 0.036, 0.12], center = false);
}

////Third Slot for screw head
{
	translate([0.04-X, 0.32, 0.02]) rotate([0, 0, 0]) cylinder(0.06, 0.037, 0.037, false, $fn = 100);
}

{
  translate([0.09-sF, 0.32, 0.02]) rotate([0, 0, 0]) cylinder(0.06, 0.037, 0.037, false, $fn = 100);//adjust
}

{
	translate([0.04-X, 0.283, 0.02]) rotate([0, 0, 0]) cube(size = [X+0.05-sF, 0.074, 0.3], center = false);
}

//Fourth Slot

{
	translate([0.3+X, 0.32, 0.00]) rotate([0, 0, 0]) cylinder(0.3, 0.018, 0.018, false, $fn = 100);
}

{
	translate([0.25+sF, 0.32, 0.00]) rotate([0, 0, 0]) cylinder(0.3, 0.018, 0.018, false, $fn = 100);
}

{
	translate([0.25+sF, 0.302, 0.00]) rotate([0, 0, 0]) cube(size = [X+0.05-sF, 0.036, 0.12], center = false);
}

////Fourth Slot for screw head
{
	translate([0.3+X, 0.32, 0.02]) rotate([0, 0, 0]) cylinder(0.3, 0.035, 0.037, false, $fn = 100);
}

{
     translate([0.25+sF, 0.32, 0.02]) rotate([0, 0, 0]) cylinder(0.3, 0.035, 0.037, false, $fn = 100);//adjust
}

{
	translate([0.25+sF, 0.283, 0.02]) rotate([0, 0, 0]) cube(size = [X+0.05-sF, 0.074, 0.3], center = false);
}



}




}



};
