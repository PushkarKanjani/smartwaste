from flask import Flask, jsonify, request
import os
import sys

app = Flask(__name__)

@app.route('/health', methods=['GET'])
def health_check():
    return jsonify({"status": "ok", "service": "SmartWaste ML Service"}), 200

@app.route('/predict', methods=['POST'])
def predict():
    """Stub ML prediction endpoint"""
    data = request.json or {}
    return jsonify({
        "status": "success",
        "predictions": "Sample predictions"
    }), 200

@app.route('/optimize-route', methods=['POST'])
def optimize_route():
    """Stub ML route optimization endpoint"""
    return jsonify({
        "status": "success",
        "route": []
    }), 200

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
