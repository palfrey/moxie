include <../library/dungeon.scad>
include <../library/train_tracks_generator.scad>

difference()
{
    dungeon(7, 7);
    translate([ tile_width + grid_spacing, -0.01, -0.01 ])
    {
        scale([ 1, 1, 1.01 ])
        {
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

translate([ tile_spacing(2) + grid_spacing, 0, 0 ])
{
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