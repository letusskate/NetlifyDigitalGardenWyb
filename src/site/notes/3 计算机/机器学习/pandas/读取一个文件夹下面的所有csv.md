---
{"dg-publish":true,"permalink":"/3 计算机/机器学习/pandas/读取一个文件夹下面的所有csv/","title":"读取一个文件夹下面的所有csv"}
---


for root_dir,sub_dir,files in os.walk(r"network"):  
for file in files:  
if file.endswith(".csv"):  
\#构造绝对路径  
file_name = os.path.join(root_dir, file)  
\#读取 sheet 页  
df=pd.read_csv(file_name)  
csv_name=file.replace(".csv","")  
\#新增两列用于记录数据所属 excel 及 sheet 页，这一步骤感觉很有用，因为后续数据清理的时候，遇到莫名其妙的数据不知道怎么办的话，还可以去源 excel 表格上看下。  
df\["csv_name"\]=csv_name  
network=pd.concat(\[network,df\])