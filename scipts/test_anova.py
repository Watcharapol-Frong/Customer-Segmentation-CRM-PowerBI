import pandas as pd

# read_df
df_anova_type_roi = pd.read_csv('/data/notebook_files/data/anova_type_roi.csv')
df_anova_rate_segment = pd.read_csv('/data/notebook_files/data/anova_segment_rate.csv')
df_anova_type_score = pd.read_csv('/data/notebook_files/data/anova_type_score.csv')

# Check df
print(df_anova_type_score.head())

# Analysis ANOVA
from scipy.stats import f_oneway

def run_anova(df, group_col, value_col):
    groups = []
    for name, group in df.groupby(group_col):
        groups.append(group[value_col].dropna().values)  # handle missing values if any
    
    f_stat, p_val = f_oneway(*groups)
    print(f"ANOVA for '{value_col}' by '{group_col}':")
    print(f"F-statistic: {f_stat:.4f}")
    print(f"P-value: {p_val:.4f}\n")

# anova_type_roi
run_anova(df_anova_type_roi, 'campaign_type', 'roi')

# anova_rate_segment
run_anova(df_anova_rate_segment, 'customer_segment', 'conversion_rate')

# anova_type_score
run_anova(df_anova_type_score, 'campaign_type', 'engagement_score')
