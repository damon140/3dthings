

// Weird leg notes
// width 44
// height 33.5

// can import PNG with surface
// surface(file=logo,invert=true); 


module leg() {
    translate([-1 * 44.1/2, -1 * 33.0/2, -3])
    cube([44.1, 33.0, 460]);
}


$fn=6;
// want a bolt hole?
module hip() {
    difference() {
        translate([0, 0, 45/2])
        cylinder(h=50, r=45, center=true);
        leg();
    }
}


hip();
