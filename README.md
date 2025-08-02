# Bayesian-Analysis-of-Spatial-Volatility-in-Housing-Markets-using-Zillow-Data
Developed a spatial stochastic volatility model, to analyze housing price volatility clustering across U.S. cities.
---
```markdown
# Spatial Stochastic Volatility Model: Reproduction Instructions

The notebook used is named "mth422_project_all_codes.ipynb"

This notebook reproduces the methodology described in the paper **"Bayesian Inference in Spatial Stochastic Volatility Models: An Application to House Price Returns in Chicago"**. The code computes spatial dependencies in housing price returns using spatial autoregressive stochastic volatility models.

## ✅ Instructions to Run the Notebook

### 1. Ensure Required Libraries Are Installed

Make sure the following libraries (with the specified versions) are installed in your Python environment:

| Library       | Version   |
|---------------|-----------|
| pandas        | 1.4.2     |
| numpy         | 1.21.5    |
| geopy         | 2.4.1     |
| fuzzywuzzy    | 0.18.0    |
| pysal         | 25.1      |
| esda          | 2.7.0     |
| matplotlib    | 3.9.1     |
| scipy         | 1.14.0    |

You can install them using pip:

```bash
pip install pandas==1.4.2 numpy==1.21.5 geopy==2.4.1 fuzzywuzzy==0.18.0 pysal==25.1 esda==2.7.0 matplotlib==3.9.1 scipy==1.14.0
```

---

### 2. Preloaded Data Files

The following files are already included and **do not need to be generated manually**:

- `contiguity_matrix.csv`: Precomputed spatial contiguity matrix
- `new.csv`: Processed monthly house prices per state, with corresponding latitude and longitude data

The third cell in the notebook (which creates these files) **does not need to be run**.

---

### 3. Running the Notebook

After ensuring the above libraries are installed and the data files are in place:

- Open the notebook.
- Run each cell **in order**, skipping the third cell.
- The notebook will execute smoothly and produce results as described in the original research.

---

## 📁 Output Files

- Spatial analysis and volatility estimates will be printed or visualized inline within the notebook.
- Intermediate results like adjacency matrices and transformed data may be saved for reference.

---

## 📌 Notes

- Make sure you’re using a compatible Python version (ideally 3.8 or 3.9).
- If using a virtual environment, activate it before installing libraries and running the notebook.
```

---
