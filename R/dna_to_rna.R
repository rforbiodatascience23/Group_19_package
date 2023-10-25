#' DNA_to_RNA
#'
#' @param DNA_sequence Sequence of the nucleotides A, C, G and T
#'
#' @return Sequence of the nucleotides A, C, G and U corresponding to the DNA sequence given as parameter
#' @export
#'
#' @examples DNA_to_RNA("A C G T")

dna_to_rna <- function(DNA_sequence){
  RNA_sequence <- gsub("T", "U", DNA_sequence)
  return(RNA_sequence)
}
