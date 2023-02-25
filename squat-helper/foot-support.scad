

// 30 high

translate([0,0,15])
minkowski() {
 cylinder($fn=10, h=20, d1=50,  d2=35, center=true);
 sphere(r = 5);
}