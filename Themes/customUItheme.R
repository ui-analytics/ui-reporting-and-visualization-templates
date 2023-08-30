theme_uncc_ui <- function(base_size=14, base_family="Georgia") {
  library(grid)
  library(ggthemes)
  
  theme_foundation(base_size=base_size, base_family=base_family) +
    theme(
      plot.title = element_text(face = "bold", 
                                size = rel(1.2), 
                                hjust = 0.5, 
                                margin = margin(0,0,20,0)),
      text = element_text(),
      panel.background = element_rect(colour = NA),
      plot.background = element_rect(colour = "black",
                                     linewidth = 1),
      panel.border = element_rect(colour = "black",
                                  linewidth = 1),
      axis.title = element_text(face = "bold", 
                                size = rel(1)),
      axis.title.y = element_text(angle=90, 
                                  vjust = 4),
      axis.title.x = element_text(vjust = -1),
      axis.text = element_text(), 
      axis.line = element_line(color = NA),
      axis.ticks = element_blank(),
      panel.grid.major = element_line(color = "#D8D8D8", 
                                      linetype = 2, 
                                      linewidth = 0.5),
      panel.grid.minor = element_blank(),
      legend.key = element_rect(colour = NA),
      #legend.position = "right",
      #legend.direction = "vertical",
      #legend.spacing.x = unit(0.9, "cm"),
      #legend.box = "vetical",
      legend.key.size = unit(0.5, "cm"),
      legend.background = element_rect(colour = 1),
      plot.margin = unit(c(10,5,5,5), "mm"),
      strip.background = element_rect(colour = "#f0f0f0", 
                                      fill = "#f0f0f0"),
      strip.text = element_text(face = "bold")
    ) 
  }


# Predefined color palette
basegr <- "#005035"
lightgr <- "#00c683"
basegd <- "#a49665"
blue <- "#007377"
brred <- "#802F2D"
jasper <- "#F1E6B2"

# Qualitative -------------------------------------------------------------

scale_color_ga_qualitative <- function() {
  
  scale_color_manual(values = c(basegr, 
                                basegd, 
                                lightgr, 
                                jasper, 
                                blue, 
                                brred))
  
}

# Sequential --------------------------------------------------------------

scale_fill_ga_sequential <- function(low_color = basegd, 
                                     high_color = basegr) {
  
scale_fill_gradient(low = low_color, 
                    high = high_color)
}
