import pandas as pd

# read_df
df_chi_channel_segment = pd.read_csv('/data/notebook_files/data/chi_contingency_table.csv')
df_chi_type_segment = pd.read_csv('/data/notebook_files/data/chi_test_type_segment.csv')
df_chi_channel_type = pd.read_csv('/data/notebook_files/data/chi_test_channel_type.csv')

# Check df
print(df_chi_channel_type.head())

from scipy.stats import chi2_contingency

def run_chi_square(df, index_col, columns_col, values_col='count'):
    
    contingency = df.pivot(index=index_col, columns=columns_col, values=values_col).fillna(0)
    chi2, p_val, dof, expected = chi2_contingency(contingency)
    
    print(f"Chi-square Test for '{index_col}' vs '{columns_col}':")
    print(f"Chi-square statistic: {chi2:.4f}")
    print(f"Degrees of freedom: {dof}")
    print(f"P-value: {p_val:.4f}\n")
    
# Chi-square Test 1
run_chi_square(df_chi_channel_segment, 'channel_used', 'customer_segment')

# Chi-square Test 2
run_chi_square(df_chi_type_segment, 'campaign_type', 'customer_segment')

# Chi-square Test 3
run_chi_square(df_chi_channel_type, 'channel_used', 'campaign_type')
