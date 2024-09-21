include <../library/dungeon.scad>
include <../library/train_tracks_generator.scad>

difference()
{
    dungeon(7, 1);
    translate([ -0.02, tile_spacing(2), -1 ])
    {
        scale([ 1.01, 0.99, 1.1 ])
        {
            track(length = tile_spacing(0),
                  end1 = "none",
                  end2 = "none",
                  cutout = false);
        }
    }
}

translate([ 0, tile_spacing(2), 0 ])
{
    scale([ 1.01, 0.99, 1.1 ])
    {
        track(length = tile_spacing(0),
              end1 = "nest",
              end2 = "none",
              cutout = false);
    }
}