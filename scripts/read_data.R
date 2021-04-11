d <- read.csv(here::here(file.path("data", "our_lego.tsv")),
  sep="\t", quote="", comment="")
# Clean up:
d <- d[seq_len(1086),]
