$RADIUS=12.5;

//base
cylinder(h=2.5, r=$RADIUS, $fn=6);

//torre  (fins a 2.86)
translate([0,0,2.4]) {
cylinder(h=26.2, r1=$RADIUS-1.5, r2=$RADIUS-5, $fn=6);
cylinder(h=27.5, r1=$RADIUS-3.5, r2=$RADIUS-5, $fn=80);
}

//cap
    translate([0,0,28.5])
    cylinder(h=1.6, r1=$RADIUS-5, r2=$RADIUS-1, $fn=6);

difference() {    
    translate([0,0,29.9])
    cylinder(h=7, r=$RADIUS-1, $fn=80);
    
    translate([0,0,30])
    cylinder(h=9, r=$RADIUS-4.5, $fn=80);
    
    translate([0,0,36])
    for(i=[0:60:359]) {
        rotate([0,0,i])
        cube([2,40,6], center=true);
    }
}



// BANDERES

for(i=[0:90:359]){  // 4 banderes
    rotate([0,0,i])
    union() {

translate([25,0,0]) {
cylinder(h=2, r=$RADIUS-5, $fn=80);
cylinder(h=17, r=1.25, $fn=80);
}


difference() {
    union() {
// primer aro
difference() {
    translate([40,0,8])
    cylinder(h=8, r=15.75, $fn=80);

    translate([40,0,6])
    cylinder(h=12, r=14.25, $fn=80);
    
    translate([20,-30,0])
    cube([50,30,30]);
    
    translate([20,15,0])
    rotate([0,0,-45])
    cube([50,30,30]);
}

// segon aro
difference() {
    translate([15,15,8])
    cylinder(h=8, r=14.9, $fn=80);

    translate([15,15,6])
    cylinder(h=12, r=13.4, $fn=80);
    
    translate([-20,12.5,0])
    rotate([0,0,-45])
    cube([60,30,30]);
    
    translate([25,19,0])
    rotate([0,0,-50])
    cube([50,30,30]);
    
    translate([0,19,0])
    cube([50,30,30]);
}
} // end union
    translate([20,0,16])
    rotate([-6,0,0])
    cube([20,20,10]);

    translate([20,0,0])
    rotate([6,0,0])
    cube([20,20,8]);
} // end difference
} // end union
}// end for