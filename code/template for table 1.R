# Create the data frame
candy_data <- data.frame(
  RK = 1:12,
  CANDY = c(
    "Reese’s Peanut Butter Cup", "Reese’s Miniatures", "Twix", 
    "Kit Kat", "Snickers", "Reese’s Pieces", "Milky Way", 
    "Reese’s Stuffed With Pieces", "Peanut Butter M&M’s", 
    "Butterfinger", "Peanut M&M’s", "3 Musketeers"
  ),
  WIN_PERCENTAGE = c(
    84.2, 81.9, 81.6, 76.8, 76.7, 73.4, 73.1, 72.9, 
    71.5, 70.7, 69.5, 67.6
  )
)

# Create the formatted table with bars on the right
ft_table_2 <- formattable(candy_data, list(
  WIN_PERCENTAGE = formatter(
    "span",
    style = x ~ style(
      display = "flex",                 # Use flex layout for alignment
      "align-items" = "center",         # Align percentage and bar vertically
      "gap" = "10px"                    # Add spacing between number and bar
    ),
    x ~ paste0(
      '<span style="display:inline-block; text-align:left; width:35px;">', x, '%</span>',  # Percentage value
      '<span style="display:inline-block; width:', x * 1.5, 'px; height:10px; background-color:orange;"></span>'  # Bar
    )
  )
))

# Render the table

raw_html<-as.character(ft_table_2)
raw_html <- gsub( "&lt;","<", raw_html)    # Escape '<'
raw_html <- gsub("&gt;",">", raw_html)    # Escape '>'
raw_html
browsable(HTML(raw_html))





