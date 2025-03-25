library(ggplot2)
library(ggmosaic)
library(dplyr)

# Remove rows with NA values but keep 'Tie' results
cleaned_data <- merged %>%
  filter(!is.na(winner) & !is.na(result))

# Calculate distinct count of match_id for each combination of winner and result
distinct_count_data <- cleaned_data %>%
  group_by(winner, result) %>%
  summarise(distinct_match_id_count = n_distinct(match_id)) %>%
  ungroup()

# Plotting with ggplot2 and geom_mosaic
ggplot(data = distinct_count_data) +
  geom_mosaic(aes(weight = distinct_match_id_count, x = product(result, winner), fill = result)) +
  labs(fill = "Result") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 10)) +
  ggtitle("IPL Winners by Result Including Ties (2008-2023)")

