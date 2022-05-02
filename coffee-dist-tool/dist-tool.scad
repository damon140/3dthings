

module needle() {
  cylinder($fn=10, h=40, d=1); 
  translate([0, 0, 40])
  cylinder($fn=10, h=30, d=3);
}


module needles() {
  for(i = [1 : 8])
    rotate(i * 45)
      translate([0, 13])
        needle();

  for(i = [1 : 3])
    rotate(i * 120)
      translate([0, 5])
        needle();
}

difference() {

  translate([0, 0, 35])
  cylinder($fn=6, h=50, d=40, center=false);

  translate([0, 0, 69])
  cylinder($fn=6, h=50, d=35, center=false);

  needles();
}

