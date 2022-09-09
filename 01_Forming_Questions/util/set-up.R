# C. Savonen 
# 2022

# Set up the dataset for the first_project.Rmd

# Find .git root directory
root_dir <- rprojroot::find_root(rprojroot::has_dir(".git"))

candy_df <- read_csv(file.path(root_dir, "01_Forming_Questions", "data", "raw", "candy-data.csv"), 
                     show_col_types = FALSE)

candy_df <- candy_df %>% 
  dplyr::mutate_at(
    dplyr::vars(chocolate, 
                fruity, 
                caramel, 
                peanutyalmondy, 
                nougat, 
                crispedricewafer, 
                hard, 
                bar, 
                pluribus), as.logical)

write_csv(candy_df, file.path(root_dir, "01_Forming_Questions", "data", "candy-data.csv"))
