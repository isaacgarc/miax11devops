import pandas as pd
def handler(event,context):
    df= pd.DataFrame([1,1,2,2])
    print(df)
    return 'Hola'