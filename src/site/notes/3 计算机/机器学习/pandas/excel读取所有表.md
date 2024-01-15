---
{"dg-publish":true,"permalink":"/3 计算机/机器学习/pandas/excel读取所有表/","title":"excel读取所有表"}
---


\#表单数据的存储  
form=pd.DataFrame()  
\#os.walk(file_path) 深度遍历 file_path 下的所有子文件夹及文件  
for root_dir,sub_dir,files in os.walk(r"form"):  
for file in files:  
if file.endswith(".xls"):  
\#构造绝对路径  
file_name = os.path.join(root_dir, file)  
\#读取 sheet 页  
\#pd.read_excel(file_path,sheet_name=None).keys() 获取 excel 表格所有的 sheet 页名称  
for sheet in pd.read_excel(file_name,sheet_name=None).keys():  
df=pd.read_excel(file_name,sheet_name=sheet)  
excel_name=file.replace(".xlsx","")  
\#新增两列用于记录数据所属 excel 及 sheet 页，这一步骤感觉很有用，因为后续数据清理的时候，遇到莫名其妙的数据不知道怎么办的话，还可以去源 excel 表格上看下。  
df\["excel_name"\]=excel_name  
df\["sheet_name"\]=sheet  
form=pd.concat(\[form,df\])  
form.head()