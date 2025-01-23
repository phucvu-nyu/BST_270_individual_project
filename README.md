# BST_270_individual_project

This repository contains my attempt to reproduce tables/figures from FiveThirtyEight's [The Ultimate Halloween Candy Power Ranking](https://fivethirtyeight.com/videos/the-ultimate-halloween-candy-power-ranking/).

## Project Structure

A complete code reproduction attempt is available at `./code/candy_rank.qmd`. This notebook uses [Quarto](https://quarto.org). If you are unfamiliar with Quarto or R, please review [Get Started with Quarto](https://quarto.org/docs/get-started/) and [Using R](https://quarto.org/docs/computations/r.html) for more information. 

Snapshots of figures from the original article plots are available in folder `./data`.


## Data

The data set used for the reproduction analysis is available at `./data/candy-data.csv`. It is available on [GitHub](https://github.com/fivethirtyeight/data/tree/master/candy-power-ranking).

For binary variables, 1 means yes, 0 means no.

The data contains the following fields:

Header | Description
-------|------------
chocolate | Does it contain chocolate?
fruity | Is it fruit flavored?
caramel | Is there caramel in the candy?
peanutalmondy | Does it contain peanuts, peanut butter or almonds?
nougat | Does it contain nougat?
crispedricewafer | Does it contain crisped rice, wafers, or a cookie component?
hard | Is it a hard candy?
bar | Is it a candy bar?
pluribus | Is it one of many candies in a bag or box?
sugarpercent | The percentile of sugar it falls under within the data set.
pricepercent | The unit price percentile compared to the rest of the set.
winpercent | The overall win percentage according to 269,000 matchups.