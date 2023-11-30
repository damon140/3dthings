

translate([0, 30, 0])
union(){
  translate([10, 3, 0])
  linear_extrude(height=3)
    text("Oliver", 20, "Cascadia Code Semibold");
  cube([150, 3, 9]);
}

translate([10, 3, 0])
linear_extrude(height=3)
    text("Sarah", 20, "Cascadia Code Semibold");
cube([150, 3, 9]);