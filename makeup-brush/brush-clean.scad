
$fn=35;



// FIXME: need height and diameter
module halfRound(thickness) {
  difference() {
    cylinder(h=1.9, r=5, center=true);
    cylinder(h=12, r=5-thickness, center=true);

    translate([-10, 0, -12])
    cube([20,20,30]);
  }
}

module pair() {
  halfRound(0.6);
  translate([10 - 0.6, 0, 0])
  rotate([0, 0, 180])
  halfRound(0.6);
}

module wiggleLine() {
  pair();
  translate([20 - 1.2, 0, 0])
  pair();
  translate([40 - 2.4, 0, 0])
  pair();
  translate([60 - 3.6, 0, 0])
  pair();
}

module wiggleLine2() {
  translate([0, -30, 0])
  rotate([0, 0, 90])
  wiggleLine();
}

translate([-40, 0, 2])
wiggleLine2();

translate([-20, 0, 2])
wiggleLine2();

translate([0, 0, 2])
wiggleLine2();

translate([20, 0, 2])
wiggleLine2();

translate([40, 0, 2])
wiggleLine2();


translate([-26, -4, 0])
linear_extrude(height=3.3)
    text("Maria", 11, "Segoe Script");

//cube([150, 3, 9]);

difference() {
  union() {
    translate([0, 0, 7.5])
    scale([1.5, 1])
    cylinder(h=10, r=40, center=true);


    //translate([0, 0, 50])
    scale([1.5, 1])
    cylinder(h=5, r2=40, r1=37, center=true);
  }

  translate([0, 0, 17])
  scale([1.52, 1])
  cylinder(h=30, r=36.8, center=true);  
}


