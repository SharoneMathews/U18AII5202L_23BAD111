# ============================================
# Academic Performance Analysis & Visualization
# ============================================

# 1. Load Required Libraries
library(ggplot2)
library(dplyr)

# --------------------------------------------
# 2. Import Dataset
# --------------------------------------------
data <- read.csv("D:/Downloads/1.student_performance.csv")

# --------------------------------------------
# 3. Data Preprocessing
# --------------------------------------------

# Remove missing values
data_clean <- na.omit(data)

# Convert columns to correct data types
data_clean$Subject     <- as.factor(data_clean$Subject)
data_clean$Final_Grade <- as.factor(data_clean$Final_Grade)

data_clean$Internal_Test1 <- as.numeric(data_clean$Internal_Test1)
data_clean$Internal_Test2 <- as.numeric(data_clean$Internal_Test2)

# Create Average Internal Marks
data_clean$Average_Marks <- 
  (data_clean$Internal_Test1 + data_clean$Internal_Test2) / 2

# --------------------------------------------
# 4. Bar Chart: Subject-wise Average Marks
# --------------------------------------------

avg_subject_marks <- data_clean %>%
  group_by(Subject) %>%
  summarise(Average_Marks = mean(Average_Marks))

ggplot(avg_subject_marks,
       aes(x = Subject, y = Average_Marks, fill = Subject)) +
  geom_bar(stat = "identity") +
  labs(title = "Subject-wise Average Internal Marks",
       x = "Subject",
       y = "Average Marks") +
  theme_minimal()

# --------------------------------------------
# 5. Line Chart: Performance Trend Across Tests
# --------------------------------------------

test_trend <- data_clean %>%
  group_by(Subject) %>%
  summarise(Test1 = mean(Internal_Test1),
            Test2 = mean(Internal_Test2)) %>%
  tidyr::pivot_longer(cols = c(Test1, Test2),
                      names_to = "Test",
                      values_to = "Marks")

ggplot(test_trend,
       aes(x = Test, y = Marks,
           group = Subject, color = Subject)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  labs(title = "Performance Trend Across Internal Tests",
       x = "Internal Test",
       y = "Average Marks") +
  theme_minimal()

# --------------------------------------------
# 6. Pie Chart: Grade Distribution
# --------------------------------------------

grade_distribution <- data_clean %>%
  count(Final_Grade)

ggplot(grade_distribution,
       aes(x = "", y = n, fill = Final_Grade)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Final Grade Distribution") +
  theme_minimal()
