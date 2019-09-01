from bs4 import BeautifulSoup
import requests
import re

#response = requests.get('https://xn--vckya7nx51ik9ay55a3l3a.com/companies/1332')
#soup = BeautifulSoup(response.content, 'html.parser')

#print(re.sub('[^0-9]','', soup.find(text='従業員数').find_parent().find_parent().find('dd').text))