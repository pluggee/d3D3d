
rotate ([0,0,90]) translate ([0,0,-2]) difference (){
    cube([42,14,4], center = true);
    translate ([+16,0,0]) cylinder(d=6,h=100,center=true);
    translate ([-16,0,0]) cylinder(d=6,h=100,center=true);
}

