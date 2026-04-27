import os
from flask import Flask, jsonify
from flask_cors import CORS
import psycopg2

app = Flask(__name__)
CORS(app)

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

@app.route("/api/team")
def get_team():
    try:
        connection = get_connection()
        cursor = connection.cursor()

        cursor.execute("SELECT nombre, apellido, legajo, feature, servicio, estado FROM members;")
        m = cursor.fetchall()

        members = []
        for fila in m:
            members.append({
                "nombre": fila[0],
                "apellido": fila[1],
                "legajo": fila[2],
                "feature": fila[3],
                "servicio": fila[4],
                "estado": fila[5],
            })

        cursor.close()
        connection.close()

        return jsonify(members)

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)