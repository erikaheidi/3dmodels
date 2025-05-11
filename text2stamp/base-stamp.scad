stamp="Printables";
size=30;
height=20;
font="Bitstream Vera Sans";
withborder=false;

StringStamp(stamp,size,height,font,withborder);

module StringStamp(
    string="test", 
    size=30, 
    height=10, 
    font="Bitstream Vera Sans",
    withborder=false) {   
           
    linear_extrude(height=height/2, convexity=4) {      
        text(string,size=size,font=font,halign="center",valign="center");
    }
    
    box_width=size*len(string)*0.8;
    box_height=size+10;

    translate([0-box_width/2,0-box_height/2,(height/2)-2]) {
            cube([box_width, size+10, height]);
            if (withborder==true) {
                translate([-5,-5,height]) cube([box_width+10, box_height+10, 10]);
            }
    }
}

echo(version=version());
