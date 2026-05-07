from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/health', methods=['GET'])
def health():
    return jsonify({"status": "UP"}), 200

@app.route('/')
def home():
    return "Microservicio funcionando 🚀"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)