# Visualization of Academic Performance Indicators using R

**Name:** Sharone Mathews S  
**Roll No:** 23BAD111 

---

## 🎯 Objective

To analyze and visualize the internal assessment performance of first-year engineering students across multiple subjects using appropriate data visualization techniques in **R**.

---

## 💻 Software & Tools Used

- **R Version:** 4.4.1  

### R Packages:
- ggplot2  
- dplyr  
- tidyr  

---

## 📁 Dataset Description

- **File Name:** `1.student_performance.csv`

### Description:
The dataset contains student internal assessment details including:
- Roll Number  
- Subject  
- Internal Test 1 Marks  
- Internal Test 2 Marks  
- Assignment Marks  
- Final Grade  

---

## 🔧 Steps Performed

### 1. Load Required Libraries
The necessary libraries for data manipulation and visualization are loaded using the `library()` function.

### 2. Import Dataset
The dataset is imported into R using the `read.csv()` function.

### 3. Data Preprocessing
- Missing values are removed.
- Relevant columns are converted to appropriate data types.
- An additional column **Average_Marks** is calculated by averaging:
  - Internal Test 1 Marks  
  - Internal Test 2 Marks  
  - Assignment Marks  

### 4. Data Visualization

#### a) Bar Chart – Subject-wise Average Marks
- Displays the average internal marks for each subject.
- Helps identify subjects with lower overall performance.

#### b) Line Chart – Performance Trend Across Tests
- Shows the trend of average student performance across internal tests.
- Useful for understanding improvement or decline in performance.

#### c) Pie Chart – Grade Distribution
- Represents the distribution of final grades among students.
- Helps visualize overall academic outcomes.

---

## 📊 Output Generated

- Bar Chart showing subject-wise average marks  
- Line Chart showing performance trend across tests  
- Pie Chart showing grade distribution  

*(Screenshots of code and outputs are included separately)*

---

## ✅ Conclusion

The visualization techniques used in this experiment effectively highlight subject difficulty, performance trends, and grade distribution. Such analysis helps academic institutions identify weak areas and improve teaching strategies.

---

## 📝 Notes

- Warning messages related to package build versions do not affect execution.
- **Rtools is not required** as binary packages are used.

---

## 📌 Author

**Sharone Mathews S**  
Roll No: 23BAD111
