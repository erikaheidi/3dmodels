# Erika's 3D Models
OpenSCAD 3D models and some scripts to automate model generation and export.

## Setup with Docker
You need only Docker to generate the STL models. You can also use OpenSCAD directly if you have it installed on your system.

The following command will build an OpenScad container image and land you in a shell where you can generate your models:

```bash
make openscad
```

## Text2Stamp
This is a script to generate 3D stamps from text. It uses OpenSCAD to create the models and export them in STL format.

After landing in the shell, you can use the convenient `t2s` script to generate a stamp from text using prompts. For example. 

```bash
cd text2stamp
./t2s --stamp alice --font-size 30
```

You'll get output similar to this:

```bash
Generating Stamp 'alice' with size 30...
ECHO: version = [2021, 1, 0]
Geometries in cache: 4
Geometry cache size in bytes: 71896
CGAL Polyhedrons in cache: 1
CGAL cache size in bytes: 642384
Total rendering time: 0:00:00.277
   Top level object is a 3D object:
   Simple:        yes
   Vertices:      476
   Halfedges:    1428
   Edges:         714
   Halffacets:    496
   Facets:        248
   Volumes:         2
Stamp 'alice' generated successfully as 'out/alice.stl'.

```

When no parameters are passed, the script will prompt you for the stamp text and size and output the generated model in the `out` directory:

```bash
$ ./t2s
Enter stamp (default: printables): erika
Enter font size (default: 30): 
Generating Stamp 'erika' with size 30...
ECHO: version = [2021, 1, 0]
Geometries in cache: 4
Geometry cache size in bytes: 65512
CGAL Polyhedrons in cache: 1
CGAL cache size in bytes: 585936
Total rendering time: 0:00:00.261
   Top level object is a 3D object:
   Simple:        yes
   Vertices:      434
   Halfedges:    1302
   Edges:         651
   Halffacets:    454
   Facets:        227
   Volumes:         2
Stamp 'erika' generated successfully as 'out/erika.stl'.

```

### Using OpenSCAD directly

If you have OpenSCAD installed on your system, you can either use the `t2s` or use openscad directly to generate the model. This can be done via their graphic interface or via command line. From the command line, you can use the following command to generate a stamp with the text "stamptext" and size 20. The generated model will be saved as `out/mystamp.stl`.:

```bash
openscad -o "out/mystamp.stl" -D "stamp=\"stamptext\"" -D "size=20" base-stamp.scad
```
