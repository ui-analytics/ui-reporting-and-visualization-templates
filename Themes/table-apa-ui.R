apa_style <- function(data) {
  data %>%
    opt_table_lines(extent = "none") %>%
    tab_options(
      table.align = "left",
      heading.border.bottom.width = 2,
      heading.border.bottom.color = "black",
      heading.border.bottom.style = "solid",
      table.border.top.color = "white",
      table_body.hlines.color = "white",
      table_body.border.top.color = "black",
      table_body.border.top.style = "solid",
      table_body.border.top.width = 1,
      heading.title.font.size = 18,
      table.font.size = 14,
      heading.subtitle.font.size = 16,
      heading.align = "left",
      table_body.border.bottom.color = "black",
      table_body.border.bottom.width = 2,
      table_body.border.bottom.style = "solid",
      column_labels.border.bottom.color = "black",
      column_labels.border.bottom.style = "solid",
      column_labels.border.bottom.width = 1,
      data_row.padding = px(5)
    ) %>%
      opt_table_font(font = "georgia")
}

