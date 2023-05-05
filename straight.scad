include <train_tracks_generator.scad>
include <dungeon.scad>

difference() {
    dungeon(5, 5);    
    translate([-0.01, (tile_width+grid_spacing)*1+tile_width,-1]) {
        scale([1.01,0.99,1.1]) {
            track(length=((tile_width+grid_spacing)*4)+tile_width,
                    end1 = "none",
                    end2 = "none",
                    cutout = false);
        }
    }
}

translate([0, (tile_width+grid_spacing)*1+tile_width,0]) {
    track(length=((tile_width+grid_spacing)*4)+tile_width,
            end1 = "nest",
            end2 = "plug",
            cutout = false);
}