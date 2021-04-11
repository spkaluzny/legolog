d <- readODS::read_ods(here::here(file.path("data", "our_lego.ods")),
  sheet="LEGO")
# Select only our Lego
indxGive_Away <- grep("Give Away", d[[1]])
stopifnot(length(indxGive_Away) == 1)
d <- d[seq_len(indxGive_Away - 1), ]
# Drop all blank rows
indxBlank <- which(apply(d, 1, function(x) sum(is.na(x))) == ncol(d))
d <- d[-indxBlank, ]
