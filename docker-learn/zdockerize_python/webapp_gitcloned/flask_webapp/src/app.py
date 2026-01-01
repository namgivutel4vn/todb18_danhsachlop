from flask import Flask, render_template
import requests
import os

app = Flask(__name__)

API_URL_dslop = os.environ.get('API_URL_dslop')
#TODO                           API_URL_dslop eg localhost:5000 <- replace by apiapp c
assert API_URL_dslop, '❌Envvar API_URL_dslop is required'

@app.route('/')
def index():
  try:
    res = requests.get(API_URL_dslop) ; res.raise_for_status()
    dslop = res.json()
  except:
    raise
  return render_template('index.html', dslop=dslop)


if __name__ == '__main__':
  app.run(host='0.0.0.0', port=5000)
