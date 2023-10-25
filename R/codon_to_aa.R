#' Codon to amino acid
#'
#' @param codon sequence of 3 nucleotides
#'
#' @return aa, the amino acid corresponding to the given codon
#' @export
#'
#' @examples codon_to_aa("AUG")
codon_to_aa <- function(codon){
  aa <- paste0(codon_table[codon], collapse = "")
  return(aa)
}
