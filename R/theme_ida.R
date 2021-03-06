#' ggplot theme 
#'
#' @param title.size font size of all title elements + facet labels
#' @param text.size font size of all text elements
#' @param legend.position either one of "top", "bottom", "left" or "right"
#' @param show.axis should axes be drawn? (TRUE, FALSE, "x", "y")
#' @param plot.margin margin around entire plot (in cm of the top, right, bottom, and left margins)
#'
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_blank
#' @importFrom ggplot2 element_line
#' @importFrom ggplot2 element_rect
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 unit
#' @export
theme_ida <- function(title.size = 16, text.size = 14,
                      legend.position = "top", show.axis = FALSE, 
                      plot.margin = c(.2, .1, .2, .1)){
  # baseline
  layout <- ggplot2::theme_classic()
  layout <- layout + theme(text = element_text(size = text.size),
                           title = element_text(size = title.size, 
                                                face = "bold"),
                           line = element_line(size = .5))
  
  # axes
  if (inherits(show.axis, "character") | show.axis == FALSE){
    if (inherits(show.axis, "character")){
      show.axis <- tolower(show.axis)
      if (show.axis == "x"){
        layout <- layout + theme(axis.line.y = element_blank())
      }
      if (show.axis == "y"){
        layout <- layout + theme(axis.line.x = element_blank())
      }
    } else {
      layout <- layout + theme(axis.line.x = element_blank(),
                               axis.line.y = element_blank())
    }
  }
  
  # legend
  layout <- layout + theme(legend.position = legend.position,
                           legend.background = element_blank(),
                           legend.key.height = unit(2, "line"))
  
  # facets 
  layout <- layout + theme(strip.background = element_blank(),
                           strip.text = element_text(size = title.size,
                                                     face = "bold"))
  
  # misc 
  layout <- layout + theme(panel.background = element_rect(fill = "transparent"),
                           plot.background = element_rect(fill = "transparent"),
                           plot.margin = unit(plot.margin, "cm"))
  
  layout
}
