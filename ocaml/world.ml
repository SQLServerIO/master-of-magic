(* World generating strategies:
 * 1. set each cell to a random value (between -100 and 100 or something). average
 * out the cells by combining all neighbors of a cell, repeat a few times. stratify
 * the range and associate terrain elements accordingly.
 *
 * 2. cloud fractals
 *
 * 3. coral reef algorithm: pick some random cells and set them as land, then repeatedly
 * select new cells and if they are next to land then set that cell as land.
 *
 * 4. amoeba: start at a random cell and some starting life (100), move in one of the
 * cardinal directions and put down a land cell, decrease life by some random amount.
 * stop when life reaches 0.
 *)
