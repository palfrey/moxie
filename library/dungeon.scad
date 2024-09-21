// 25.4mm == 1 inch
one_inch = 25.4;

// 1.25 inch (1 inch standard + some extra wiggle room)
tile_width = 1.165 * one_inch;
tile_depth = .25 * one_inch;
grid_spacing = .1 * one_inch;
fudge = 0.0005;

module
dungeon(grid_width = 10, grid_length = 10)
{
    total_grid_length =
        ((tile_width + grid_spacing) * (grid_length - 1)) + tile_width;
    total_grid_width =
        ((tile_width + grid_spacing) * (grid_width - 1)) + tile_width;

    difference()
    {
        cube(size = [ total_grid_length, total_grid_width, tile_depth ]);
        for (n = [1:((grid_length == 1) ? 1 : grid_length - 1)]) {
            translate([
                (tile_width + grid_spacing) * (n - 1) + tile_width,
                -fudge,
                (tile_depth / 2)
            ])
            {
                cube(size = [
                    grid_spacing,
                    total_grid_width + (2 * fudge),
                    (tile_depth / 2) +
                    fudge
                ]);
            }
        }
        for (n = [1:((grid_width == 1) ? 1 : grid_width - 1)]) {
            translate([
                -fudge,
                (tile_width + grid_spacing) * (n - 1) + tile_width,
                (tile_depth / 2)
            ])
            {
                cube(size = [
                    total_grid_length + (2 * fudge),
                    grid_spacing,
                    (tile_depth / 2) +
                    fudge
                ]);
            }
        }
    }
}

function tile_spacing(n) = (tile_width + grid_spacing) * n + tile_width;