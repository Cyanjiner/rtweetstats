context("Keystats: Summary report based on keyword")

## Note that since the output is a temporary html file generated from
## real time twitter data based on given input, we cannot test against
## the value or the string output.

test_that("keystats gives useful error message when given inappropriate input", {
  expect_error(keystats("realDonaldTrump",n="1000"),
               "n must be numeric number no more than 18000")
  expect_error(keystats("realDonaldTrump",n=20000),
               "n should not exceed 18000")
})

test_that("keystats gives useful error message when missing primary input keyword", {
  expect_error(keystats(n=1000),
               "Must input a keyword")
})