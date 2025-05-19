# Motivational Sign Maker (RevolvingText)
This project includes an OpenScad model that generates 3D models from text.

![Screenshot of OpenSCAD showing custom model](examples/make-it-happen.png)


## Requirements
- OpenSCAD, but can also run via Docker (in this case you need to use OpenSCAD in the command line).


### Model Parameters
From the GUI, open the `text.scad` file in OpenSCAD. You can modify all parameters in the right sidebar of the OpenSCAD window. The parameters you can modify are:   
- `lines`: An array with each line of text you want to use for the sign. Default value is `["make", "it", "happen"]`.
- `font_size`: The approximate font size for the sign. Default value is `10`.
- `base_thickness`: The thickness of base. Default value is `4`.
- `font`: The font used for the sign. The default value is `Geologica:ExtraBold`, which is a `.ttf` font included within the 'fonts' folder. Notice the font is imported through a `use` statement. You can do something similar to use a different font. You can also use system fonts by specifying the font name in the `font` parameter. For example, `Liberation Sans`.
- `font_factor`: A factor to calculate the font width size, used to centralize the text in the base. Default value is `0.9`, which is a good value for most fonts. You can modify this value to adjust the base width.