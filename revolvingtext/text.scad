use <fonts/Geologica_Auto-ExtraBold.ttf>

lines = ["make", "it", "happen"];
font = "Geologica:ExtraBold";
base_thickness = 4;
font_size = 10;
font_factor = 0.9;

MultiLineText(lines, font_size, font, font_factor, base_thickness);

module MultiLineText(lines, font_size = 10, font = "Geologica:ExtraBold", font_factor = 1, base_thickness = 2) {
    line_height = font_size * 1.2;
    padding = 20;

    // Calculate the base width and height dynamically
    widths = [for (line = lines) len(line) * font_size * font_factor];
    base_width = max(widths) + padding;
    base_height = line_height * len(lines) + padding;

    // Draw the base
    cube([base_width, base_height, base_thickness]);

    // Loop through the lines and position them dynamically
    for (i = [0 : len(lines) - 1]) {
        line_coord_x = base_width / 2 - widths[i] / 2;
        line_coord_y = base_height - (i + 1) * line_height - 2;
        RevolveText(text = lines[i], coord_x = line_coord_x, coord_y = line_coord_y, font = font, font_size = font_size);
    }
}

module RevolveText(text,angle = 60, coord_x = 20, coord_y = 20, font = "Liberation Sans:bold", font_size = 10) {
   rotate([90,0,90]) {            
        rotate_extrude(angle=angle, convexity=10, $fn = 100) {
            translate([coord_y, coord_x, 10]) //inverted due to rotation
            rotate([0,0,90])
            mirror([0,1,0])
            text(strtoupper(text),size=font_size,font=font,halign="base",valign="center");
        }
    }   
}

function strtoupper (string) =
    chr([for(s=string) let(c=ord(s)) c>=97 && c<=122 ?c-32:c]);


/*
    Project: RevolvingText
    Description: Generates 3D signs from text.
    Author: Erika Heidi <@erikaheidi>
    Date: May 2025
    License: GNU GPL v3
    Notes: This script uses OpenSCAD to create customizable 3D models.
*/