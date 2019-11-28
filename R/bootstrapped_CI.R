#' Produce bootstrapped 95% Confidence Interval
#'
#' @param data_vector observed data to sample from
#' @param n_resamples number of resamples to take
#'
#' @return tibble
#' @importFrom purrr map_dbl
#' @importFrom dplyr tibble
#' @export
bootstrapped_CI <-  function(data_vector, n_resamples = 1000) {
  resampled_means <- map_dbl(seq(n_resamples), function(i) {
    mean(sample(x = data_vector, 
                size = length(data_vector), 
                replace = T)
    )
  }
  
  )
  tibble(
    'lower' = quantile(resampled_means, 0.025),
    'mean'  = mean(data_vector),
    'upper' = quantile(resampled_means, 0.975)
  ) 
}
