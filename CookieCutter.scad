cutterheight = 15; // [10:20]
brim_height = 4; // [2:10]
brim_width = 4; // [4:10]

sharpcookie () import("beer.svg");

module sharpcookie() {
    minkowski() {
        linear_extrude(0.001) difference() {
            children();
            offset(-.05) children();
        }
        union() {
            $fn = 12;
            cylinder(h=brim_height, r1=brim_width / 2, r2=brim_width / 2);
            translate([0,0,brim_height]) cylinder(h=cutterheight, r=1.2, r2=0);
        }
    }
}
