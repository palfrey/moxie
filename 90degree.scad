include <train_tracks_generator.scad>
include <dungeon.scad>

difference() {
    dungeon(5, 5);    
    translate([tile_width+grid_spacing, -0.01,-0.01]) {
        scale([1,1,1.01]) {
            track_arc(angle = -90,
                    radius = 86,
                    end1 = "none",
                    end2 = "none",
                    grooves = false,
                    both_sides = false,
                    cutout = false,
                    cutout_corr = 0,
                    part_chamfers = true);    
        }
    }
}

translate([tile_width+grid_spacing, 0,0]) {
    track_arc(angle = -90,
            radius = 86,
            end1 = "nest",
            end2 = "plug",
            grooves = true,
            both_sides = false,
            cutout = false,
            cutout_corr = 0,
            part_chamfers = true);
}