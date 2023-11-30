#!/usr/bin/env python
# coding: utf-8

# In[2]:


import pandas as pd


# In[3]:


import numpy as np


# In[37]:


import matplotlib.pyplot as plot


# In[5]:


Data_Frame = pd.read_csv("/Users/sathwik/Documents/AIT-580/Air_Quality-1.csv")


# In[7]:


data = pd.DataFrame(Data_Frame)


# In[67]:


X= list(data.iloc[:,0])


# In[68]:


Y = list(data.iloc[:,1])


# In[65]:


print(data.head(5))


# In[53]:


Emissions_2 = data.groupby("Measure")["Data Value"].count()


# In[54]:


Emissions_2


# In[64]:


Emissions_2.plot(kind ='bar',figsize=(20,10))


# In[ ]:




