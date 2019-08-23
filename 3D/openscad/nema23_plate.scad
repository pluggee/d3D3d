


plate_x = 60;
plate_y = 85;
plate_z = 6.67;

difference() {
    translate ([0,-plate_y/2,-plate_z/2]) cube([plate_x,plate_y,plate_z], center=true);
    translate ([0,-15,0]) holecuts();
}


module holecuts(){
    translate ([+47/2,0.0]) cylinder(d=6.5, h=100, center=true);
    translate ([-47/2,0.0]) cylinder(d=6.5, h=100, center=true);
    cylinder(d=6.5, h=100, center=true);
    translate ([0,-40,0]) nema23_holes();
}


module nema23_holes(){
    cylinder(d=15, h=100, center=true);         // middle opening
    // Mounting screws
    translate ([+47/2,+47/2.0]) cylinder(d=4.3, h=100, center=true);
    translate ([-47/2,+47/2.0]) cylinder(d=4.3, h=100, center=true);
    translate ([-47/2,-47/2.0]) cylinder(d=4.3, h=100, center=true);
    translate ([+47/2,-47/2.0]) cylinder(d=4.3, h=100, center=true);
}