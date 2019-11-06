if(!require("pacman"))install.packages("pacman")
pacman::p_load(here, fs, tidyverse, yaml)

split_yaml <- function(chr){
  out <- list(yaml = NA_character_, body = NA_character_)
  pos_yaml <- str_which(chr, "---")
  pos_yaml <- seq(pos_yaml[[1]], pos_yaml[[2]])
  out$yaml <- yaml::yaml.load(chr[pos_yaml])
  out$body <- str_trim(str_c(chr[-pos_yaml], collapse = "\n"))
  out
}

parse_entry <- function(file, file_name){
  title <- str_c(file$yaml$title, 
                 " (", file$yaml$author, ", ", file$yaml$year, ")")
  if(is.null(file$yaml$link))title <- str_c("### ", title)
  else title <- str_c("### [", title, "](", file$yaml$link, ")")
  
  if(is.null(file$yaml$note))note <- ""
  else note <- str_c("*Please note: ", file$yaml$note, "*\n\n")
  
  appendix <- str_c("\n\n",
                    note,
                    "Reading time: ", file$yaml$time, "\n\n",
                    "Format: ", file$yaml$format, "\n\n",
                    "[Link to paper](", file$yaml$link, ")","\n\n",
                    "[Link to proposal](proposals/", path_file(file_name), ")")
  str_c(title, "\n\n", file$body, appendix)
}

file_names <- dir_ls(here("proposals"), type = "file")
files <- dir_map(here("proposals"), read_file, type = "file") %>% 
  str_split("\n") %>% 
  map(split_yaml)

entries <- map2_chr(files, file_names, parse_entry) %>% 
  str_c(collapse = "\n\n")

cat("# Proposals\n\n", entries, file = here("proposals.md"), sep = "")
