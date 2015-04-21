library(readxl)
# Use a excel file included in the package
sample <- system.file("extdata", "datasets.xlsx", package = "readxl")

# Read by position
head(read_excel(sample, 2))

# Or by name:
excel_sheets(sample)

head(read_excel(sample, "mtcars"))
