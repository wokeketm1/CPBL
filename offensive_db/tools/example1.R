# merge example by Wush
offensive_db <- lapply(1:240, function(num_logfile) {
  main_single_game(num_logfile)
}) %>% Reduce(f = rbind)