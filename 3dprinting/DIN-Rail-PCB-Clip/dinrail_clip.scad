

pcb_width = 53.3; // min 18mm, Arduino is 53.3mm

linear_extrude(5)
union()
{
    translate([-23,0,0]) import("rail_clip.svg");
    translate([-(pcb_width-10)/2,-3,0])square([pcb_width-10,3]);
    translate([-pcb_width/2,0,0]) import("pcb_clip.svg");
    translate([+pcb_width/2,0,0]) scale([-1,1,1]) import("pcb_clip.svg");
}