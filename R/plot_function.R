

#' Plotting of the porportions of amino acids in a sequence
#'
#' @param aa_seq Given sequence of amino acids
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @return proportions, a plot of counts of each amino acid in the sequence
#' @export
#'
#' @examples aa_proportions("MVAAA")
aa_proportions <- function(aa_seq){

# Separates each amino acid of the initial sequence
  seq <- aa_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

# Associates every amino acid to its prevalence in the sequence
  counts <- sapply(seq, function(amino_acid) stringr::str_count(string = aa_seq, pattern =  amino_acid)) |>
    as.data.frame()

# Creates a new table with the previous results
  colnames(counts) <- c("Counts")
  counts[["aa_seq"]] <- rownames(counts)

# Creates a bar chart where x the amino acids and y their counts
  proportions <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = aa_seq, y = Counts, fill = aa_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(proportions)
}


