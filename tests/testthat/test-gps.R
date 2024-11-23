

testoutput = gps_function(data_directory = "./test.csv", imputation = F)

test.exp = c(30,0,0,0,0,"",0,0,0,0,30)
test.act = as.vector(sub(".*: ", "", testoutput))

testthat::test_that("Check gps function", {
  expect_identical(test.act, test.exp)
})
