
# Make sure `random_fact()` works
fact <- random_fact(n = 1L, include = NULL, exclude = NULL)
expect_true(is.character(fact))

# Check GIFs
if (requireNamespace("magick")) {

  # Check kicks
  gif1 <- kick()
  gif2 <- kick("Chuck Norris can’t test for equality because he has no equal.",
               type = 2, width = 40, size = 25, fps = 5)
  expect_true(inherits(gif1, what = "magick-image"))
  expect_true(inherits(gif2, what = "magick-image"))
  expect_error(kick(type = 3))

  # Check punches
  gif3 <- punch()
  gif4 <- punch("Chuck Norris can’t test for equality because he has no equal.",
                width = 40, size = 25, fps = 5)
  expect_true(inherits(gif3, what = "magick-image"))
  expect_true(inherits(gif4, what = "magick-image"))
  expect_error(punch(type = 3))

}

# Check facts
expect_true(is.data.frame(roundhouse::facts))
