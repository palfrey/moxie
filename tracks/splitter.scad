include <../library/dungeon.scad>
include <../library/train_tracks_generator.scad>

difference()
{
    translate([ tile_spacing(0), tile_spacing(2), 0 ])
    {
        dungeon(7, 7);
    }
    translate([ tile_spacing(3.4), tile_spacing(2.25), 0 ])
    {
        translate([ 0, 0, -0.05 ])
        {
            switch (angleR = 90,
                    angleL = 90,
                    endR = "none",
                    endL = "none",
                    endCommon = "none",
                    lengthS = 0,
                    both_sides = false)
                ;
        }
    }
    translate([ tile_spacing(4.645), 0, 0 ])
    {
        rotate([ 0, 0, 90 ])
        {
            translate([ -0.05, 0, -0.05 ])
            {
                track(length = tile_spacing(2) + 2,
                      end1 = "none",
                      end2 = "none",
                      cutout = false);
            }
        }
    }
    translate([ 0, tile_spacing(4.676), 0 ])
    {
        rotate([ 0, 0, 0 ])
        {
            translate([ -0.05, 0, -0.05 ])
            {
                track(length = tile_spacing(0.8),
                      end1 = "none",
                      end2 = "none",
                      cutout = false);
            }
        }
    }
}

translate([ tile_spacing(3), tile_spacing(2.25), 0 ])
{
    switch (angleR = 90,
            angleL = 90,
            endR = "none",
            endL = "none",
            endCommon = "none",
            lengthS = 0,
            both_sides = false)
        ;
}

translate([ tile_spacing(4.2), tile_spacing(2), 1 ])
{
    rotate([ 0, 0, 90 ])
    {
        track(length = tile_spacing(0), end2 = "none", cutout = false);
    }
}

translate([ tile_spacing(0), tile_spacing(4.8), 1 ])
{
    rotate([ 0, 0, 0 ])
    {
        track(length = tile_spacing(0), end2 = "none", cutout = false);
    }
}

translate([ tile_spacing(7), tile_spacing(4.93), 0 ])
{
    rotate([ 0, 0, 0 ])
    {
        track(length = tile_spacing(-0.8),
              end1 = "none",
              end2 = "plug",
              cutout = false);
    }
}