tplate = 10;        // quarter inch aluminum plate
xplate = 8*25.4;
yplate = 16*25.4;


// 8020 fixture screw holes with tolerance
tol = 2.5;          // amount of motion allowed in y axis
ds1 = 7.5;          // screw hole diameter
ds2 = 18;           // ball screw diameter

ls1 = 60;           // distance between 8020 mounting screw and middle
prof = 30;          // profile size in mm
bsy = 25;           // distance between profile edge and ball screw

ds3 = 6;            // ballscrew fixing screw diameter
ls2 = 38/2;         // distance to ballscrew fixing screw

difference(){
    //main plate
    translate ([0,-yplate/2,-tplate/2]) cube([xplate,yplate,tplate], center = true);
    
    // left screw
    translate ([-ls1,-prof/2,0]) screwdrill(ds1, tol);
    
    // right screw
    translate ([+ls1,-prof/2,0]) screwdrill(ds1, tol);

    // ballscrew main
    translate ([0,-prof-bsy,0]) screwdrill(ds2, tol);

    // ball screw horizontal screws
    translate ([-ls2,-prof-bsy,0]) screwdrill(ds3, tol);
    translate ([+ls2,-prof-bsy,0]) screwdrill(ds3, tol);
    // ball screw upper screws
    translate ([-ls2*cos(45),+ls2*sin(45),0]) translate ([0,-prof-bsy,0]) screwdrill(ds3, tol);
    translate ([+ls2*cos(45),+ls2*sin(45),0]) translate ([0,-prof-bsy,0]) screwdrill(ds3, tol);
    // ball screw lower screws
    translate ([-ls2*cos(45),-ls2*sin(45),0]) translate ([0,-prof-bsy,0]) screwdrill(ds3, tol);
    translate ([+ls2*cos(45),-ls2*sin(45),0]) translate ([0,-prof-bsy,0]) screwdrill(ds3, tol);
}

module screwdrill(ds, tolr){
    translate ([0,+tolr,0]) cylinder (d=ds, h=100, center=true);
    translate ([0,-tolr,0]) cylinder (d=ds, h=100, center=true);
    cube([ds,2*tolr,100], center=true);
}