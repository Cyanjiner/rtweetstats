context("Userstats: Summary report based on username")

## Note that since the output is a temporary html file generated from
## real time twitter data based on given input, we cannot test against
## the value or the string output.

test_that("userstats gives useful error message when given inappropriate input", {
  expect_error(userstats("realDonaldTrump",n="1000"),
               "n must be numeric number no more than 3200")
  expect_error(userstats("realDonaldTrump",n=20000),
               "n should not exceed 3200")
})

test_that("userstats gives useful error message when missing primary input user", {
  expect_error(userstats(n=1000),
               "Must input a username")
})