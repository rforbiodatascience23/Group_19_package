#' Generate a codon
#'
#' @param gen_seq enter the genome to create codon
#' @param start the start character for codon creation
#'
#' @return the function will generate partitions of codons based on the gene that has inserted.
#' @export
#'
#' @examples generate_codon("GTCGTC")
generate_codon <- function(gen_seq, start = 1){
  size_seq <- nchar(gen_seq)
  codons <- substring(gen_seq,
                      first = seq(from = start, to = size_seq-3+1, by = 3),
                      last = seq(from = 3+start-1, to = size_seq, by = 3))
  return(codons)
}
