stamp="Printables";
size=30;
thickness=20;
font="Liberation Mono";
withborder=false;

scale([0.5,0.5,0.5])
    StringStamp(stamp,size,thickness,font,withborder);

module StringStamp(
    string="test", 
    size=30, 
    thickness=10,
    font="Liberation Mono",
    withborder=false) {   

    rotate([0,180,0]) {           
        linear_extrude(height=thickness/2, convexity=4) {      
            text(string,size=size,font=font,halign="center",valign="center");
        }
        
        //these are approximations
        box_width=size*len(string)*0.8;
        box_height=size+10;
        box_x=0-box_width/2;
        box_y=0-box_height/2;
        
        translate([box_x,box_y,(thickness/2)-2]) 
            cube([box_width, box_height, thickness]);
        
        if (withborder==true) {
            border=10;
            b_out_x=box_x-border/2;
            b_out_y=box_y-border/2;
            
            difference() {  
                translate([b_out_x, b_out_y, thickness*0.5-border])
                    cube([box_width+border, box_height+border, thickness*1.5]);
                
                translate([b_out_x+2, b_out_y+2, -2])
                    cube([box_width+border/2, box_height+border/2, thickness/2]);
            }
        }
        
    }
}
echo(version=version());

/*
    Project: Text2Stamp
    Description: Generates 3D stamps from text.
    Author: Erika Heidi <@erikaheidi>
    Date: May 2025
    License: GNU GPL v3
    Notes: This script uses OpenSCAD to create customizable 3D stamp models.
*/