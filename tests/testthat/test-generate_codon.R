test_that("generate_codon works", {
  expect_equal(generate_codon("CGTAG", 3), "TAG" )
})
