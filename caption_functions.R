## caption_functions.R

# Load packages ---------------------------
library(stringr)

# Create caption of coral size by year, locality, genus plot ---------------------------
generate_coral_size_caption <- function(input) {
    selected_localities <- paste(input$coral_size_choose_locality, collapse = ", ")
    selected_years <- paste(input$coral_size_choose_year, collapse = ", ")
    selected_genera <- paste(input$coral_size_choose_genus, collapse = ", ")
    caption_text <- paste0(
        "Figure Caption: Plot of coral size metrics in centimeters (maximum length, width, and height). Data for localities (", selected_localities,
        ") for years (", selected_years, ") and for coral genera (", selected_genera, ") at Turneffe Atoll. Methodology is MBRS SMP prior to 2021, and AGRRA in 2021 and beyond, leading to differences in how coral was measured between those years. Generated by University of Belize Environmental Research Institute."
    )
    str_wrap(caption_text, width = 150)
}

# Create caption of coral cover by year plot ---------------------------
generate_coral_cover_year_caption <- function(input) {
    selected_localities <- paste(input$coral_cover_year_choose_locality, collapse = ", ")
    selected_years <- paste(input$coral_cover_year_choose_year, collapse = ", ")
    if (input$coral_cover_year_consolidate_year) {
        caption_text <- paste0(
            "Figure Caption: Plot of percent coral cover across localities (", selected_localities,
            ") for years (", selected_years, ") at Turneffe Atoll. Generated by University of Belize Environmental Research Institute."
        )
    } else {
        caption_text <- paste0(
            "Plot of percent coral cover within localities (", selected_localities,
            ") and across years (", selected_years, ") at Turneffe Atoll. Methodology is MBRS SMP prior to 2021, and AGRRA in 2021 and beyond. Generated by University of Belize Environmental Research Institute."
        )
    }
    str_wrap(caption_text, width = 150)
}

# Create caption of coral cover by species plot ---------------------------
generate_coral_cover_species_caption <- function(input) {
    if (input$coral_cover_species_select_species != "All") {
        selected_species <- input$coral_cover_species_select_species
    } else {
        selected_species <- "most common coral species"
    }
    selected_localities <- paste(input$coral_cover_species_choose_locality, collapse = ", ")
    selected_years <- paste(input$coral_cover_species_choose_year, collapse = ", ")
    caption_text <- paste0(
        "Figure Caption: Plot of percent coral cover by coral species. Data for localities (", selected_localities,
        ") and for years (", selected_years, ") for ", selected_species, " at Turneffe Atoll. Methodology is MBRS SMP prior to 2021, and AGRRA in 2021 and beyond. Generated by University of Belize Environmental Research Institute."
    )
    str_wrap(caption_text, width = 150)
}

# Create caption of benthic composition plot ---------------------------
generate_benthic_comp_caption <- function(input) {
    selected_localities <- paste(input$coral_cover_species_choose_locality, collapse = ", ")
    selected_years <- paste(input$coral_cover_species_choose_year, collapse = ", ")
    group_name <- tolower(input$benthic_comp_xaxis_toggle)
    caption_text <- paste0(
        "Figure Caption: Plot of benthic composition by ", group_name, ". Data for localities (", selected_localities,
        ") and for years (", selected_years, ") at Turneffe Atoll. Methodology is MBRS SMP prior to 2021, and AGRRA in 2021 and beyond. Generated by University of Belize Environmental Research Institute."
    )
    str_wrap(caption_text, width = 150)
}
