

// wire is 7.5mm x 4.5mm

wireThickness=7.5; // mm
wireHeight=4.9; // mm


frameThickness=17.7; // mm
clipThickness=1.5; // mm
clipWidth=10; // mm
clipHeight=15; // mm
wirespace=3; // mm

// block
module block() {
  blockLength=(clipThickness)
    + frameThickness
    + wirespace
    + wireHeight - 0.11;
  cube([blockLength, clipWidth, clipHeight + clipThickness]);
}


// cutouts
module cutouts() {
  // frame space
  translate([clipThickness, -1, clipThickness])
  cube([frameThickness, clipWidth + 2, clipHeight+1 ]);

  // wire space
  translate([frameThickness + 2 * clipThickness,
    -1, clipThickness])
  cube([wireHeight, clipWidth+2, clipHeight - clipThickness * 3]);
  
  // top cutoff
  translate([frameThickness + 1 * clipThickness, -1, clipHeight - clipThickness])
  cube([8, clipWidth+2, clipThickness * 2 + 1]);
  
}

translate([-60,0,0])
block();

translate([-30,0,0])
cutouts();

difference() {
  block();
  cutouts();
}

// 
// cube([2,25,25]);


