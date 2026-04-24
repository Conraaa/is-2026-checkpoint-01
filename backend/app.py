import os
from flask import Flask, jsonify
import psycopg2

app = Flask(__name__)

def get_connection():
    return psycopg2.connect(os.getenv("DATABASE_URL"))

@app.route("/api/health")
def health():
    return jsonify({"status": "ok"}), 200

@app.route("/api/info")
def info():
    return jsonify({
        "service": "backend",
        "version": "1.0.0"
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)