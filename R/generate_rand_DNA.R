#' Generate_rand_DNA
#'
#' @param DNA_len wanted length of the random generated DNA
#'
#' @return The function will return a random DNA sequence of the desired length
#' @export
#'
#' @examples generate_rand_DNA(3)
generate_rand_DNA <- function(DNA_len){
  nucleotides <- sample(c("A", "T", "G", "C"), size = DNA_len, replace = TRUE)
  DNA_seq <- paste0(nucleotides, collapse = "")
  return(DNA_seq)
}
