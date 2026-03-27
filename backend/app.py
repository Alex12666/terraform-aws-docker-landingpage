from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/')
def home():
        return {"status": "Backend da Landing Page Online", "versao": "v2"}

    if __name__ == '__main__':
            app.run(host='0.0.0.0', port=5000)
