
// 42mm OD, 37mm ID
// => 2.5mm walls

OD=42;
ID=37;
wallThickness=((OD-ID)/2) - 0.1;

blockWidth=40;
height=9.8; // test fit 1
blockOverlap=20;


difference() {
  cube([blockWidth, OD+blockOverlap, height]);

  translate([-1, (OD+blockOverlap)/2 - ((ID+wallThickness)/2), 2])
  cube([blockWidth+2, wallThickness, height]);

  translate([-1, (OD+blockOverlap+wallThickness)/2 + ((ID+wallThickness)/2), 2])
  cube([blockWidth+2, wallThickness, height]);
}
