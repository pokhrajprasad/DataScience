import streamlit as st
import pandas as pd

st.title("Streamlit Text Input")

name=st.text_input("Enter your name:")

age=st.slider("select your age:",0,100,25)
st.write(f'Your age is {age}')
st.write(f'Your age is {type(age)}')

if name:
    st.write(f"Hello, {name}")\

options = ['Python','Java','C++','JavaScript']
choice=st.selectbox("Choose your language:",options)
st.write(f'You selected {choice}')

data={
    "Name":["john","Jane","Jake","Jill"],
    "Age":[28,24,35,40],
    "City":["New York","Los Angeles",'Chicago','Houston']
}

df=pd.DataFrame(data)
st.write(df)

uploaded_file=st.file_uploader("Choose a CSV file",type='csv')

if uploaded_file:
    df=pd.read_csv(uploaded_file)
    st.write(df)
# def func(val):
#     st.write(f'This is my function.')
#     st.write(f'{val+4,val-3}')
#     st.write(f'{min(val+4,val-3)}')

# val=age
# func(val)