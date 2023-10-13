import pandas as pd
import datetime
#pip install fsspec s3fs
def handler(event,context):
    df_raw= pd.read_csv('s3://miaxdevops/market_data.txt',sep=';')
    df_raw=df_raw.loc[:,['FECHA','VALOR','PRECIO','VOLUMEN','HORA']]
    print(df_raw)
    df_raw = df_raw[df_raw.VALOR == 'SAN']
    date = datetime.datetime.now().strftime("%d_%m_%Y_%H_%M_%S")
    out_file_path = f's3://miaxdevops//market_data_{date}.txt'
    df_raw = df_raw.to_csv(out_file_path)
    print(f"out file created {out_file_path}")
    return 'Hola'
handler([],[])