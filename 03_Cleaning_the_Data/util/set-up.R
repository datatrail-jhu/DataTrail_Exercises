# C. Savonen 
# 2022

# Set up the dataset for the first_project.Rmd

# Find .git root directory
root_dir <- rprojroot::find_root(rprojroot::has_dir(".git"))

candy_df <- read_csv(file.path(root_dir, "01_Forming_Questions", "data", "raw", "candy-data.csv"), 
                     show_col_types = FALSE)


write_csv(candy_df, file.path(root_dir, "01_Forming_Questions", "data", "candy-data.csv"))
