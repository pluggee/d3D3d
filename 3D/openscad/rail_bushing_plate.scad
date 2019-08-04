tplate = 25.4/8+1;

ls1 = 24;                       // X distance between mounting screws
ls2 = 18;                       // Y distance between mounting screws

l1 = ls1 + 42;                  // plate X dimension
l2 = ls2 + 12;                  // plate Y dimension

dscrew = 4;                // mounting screw diameter
dscrew2 = 6.5;                  // 3030 mounting screw diameter

l3 = 17 + dscrew2;

bushplate();

module bushplate(){
    translate ([0,-l2/2,-tplate/2]) difference ()
    {
        cube([l1,l2,tplate], center = true);
        // mounting screw holes
        translate ([+ls1/2,+ls2/2,0]) cylinder(d=dscrew, h=100, center = true);
        translate ([-ls1/2,+ls2/2,0]) cylinder(d=dscrew, h=100, center = true);
        translate ([-ls1/2,-ls2/2,0]) cylinder(d=dscrew, h=100, center = true);
        translate ([+ls1/2,-ls2/2,0]) cylinder(d=dscrew, h=100, center = true);
        // 3030 M6 screw holes
        translate ([+l3,0,0]) cylinder(d=dscrew2, h=100, center = true);
        translate ([-l3,0,0]) cylinder(d=dscrew2, h=100, center = true);
    }
}