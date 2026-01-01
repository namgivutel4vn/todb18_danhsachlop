from flask import Flask
#
import pathlib
import json


app = Flask(__name__)

@app.route('/')
def    index_routehandler():
  return {}

@app.route('/dslop')
def          dslop_routehandler():
  '';                              SH = pathlib.Path(__file__).resolve().parent
  '';               dslop_json_p = SH/'service/db/dslop.json'
  data = json.loads(dslop_json_p.read_text(encoding='utf-8'))
  return data


if __name__ == '__main__':
  #   run                      5000 default flask
  app.run(host='0.0.0.0', port=5000)
