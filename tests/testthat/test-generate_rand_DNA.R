test_that("generate_rand_DNA works", {
  expect_equal(nchar(generate_rand_DNA(5)), 5)
})
