

type = 2; // 1=standard, 2=reversed pcb clip (uses more space, but leaves more clearance under PCB)
pcb_width = 70; // min 18mm for version 1

// Arduino: type 1, 53.3mm
// NucleoSTM32: type 2,  70mm


linear_extrude(5)
union()
{
    translate([-23,0,0]) import("rail_clip.svg");
    if(type==1)
    {
        translate([-(pcb_width-10)/2,-3,0])square([pcb_width-10,3]);
        translate([-pcb_width/2,0,0]) import("pcb_clip.svg");
        translate([+pcb_width/2,0,0]) scale([-1,1,1]) import("pcb_clip.svg");
    }
    else
    {
        translate([-(pcb_width+22)/2,-3,0])square([pcb_width+22,3]);
        translate([-pcb_width/2,0,0]) import("pcb_clip2.svg");
        translate([+pcb_width/2,0,0]) scale([-1,1,1]) import("pcb_clip2.svg");
    }
}