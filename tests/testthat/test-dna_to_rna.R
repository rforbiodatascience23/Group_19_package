test_that("dna_to_rna works", {
  expect_equal(dna_to_rna("A C G T"), "A C G U")
})
