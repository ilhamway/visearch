from traceback import print_tb
from colorama import Cursor
import numpy as np
from PIL import Image
from feature_extractor import FeatureExtractor
from datetime import datetime
from flask import Flask, request, render_template, url_for
from pathlib import Path
from flask_cors import CORS, cross_origin
import pymysql.cursors, os

app = Flask(__name__, template_folder='frontend', static_folder='dataset')
CORS(app)

fe = FeatureExtractor()
features = []
img_paths = []
for feature_path in Path("dataset/feature/").glob("*.npy"):
    features.append(np.load(feature_path))
    img_paths.append(Path("dataset/img/") / (feature_path.stem + ".jpg"))
features = np.array(features)

conn = cursor = None

#fungsi koneksi database
def openDb():
    global conn, cursor
    conn = pymysql.connect(db="db_products", user="root", passwd="", host="localhost", port=3306)
    cursor = conn.cursor()

#fungsi untuk menutup koneksi
def closeDb():
    global conn, cursor
    cursor.close()
    conn.close()

@app.route("/", methods=["GET","POST"])
@cross_origin()
def index():
    if request.method == "POST":
        file = request.files["query_img"]

        #save image query
        img = Image.open(file.stream)
        uploaded_img_path = "dataset/uploaded/" + \
            datetime.now().isoformat().replace(":",".") + "_" + file.filename
        img.save(uploaded_img_path)
        uploaded_img_path_index = "../" + uploaded_img_path
        # print(uploaded_img_path)
        # print(uploaded_img_path_index)

        #database
        openDb()
        product_data = []
        sql = "SELECT * FROM product"
        cursor.execute(sql)
        results = cursor.fetchall()
        for data in results:
            product_data.append(data)
        closeDb()
        # print(product_data)

        #run seacrh
        query = fe.extract(img)
        dists = np.linalg.norm(features - query, axis=1)
        ids = np.argsort(dists)[:20]
        scores = [(dists[id], img_paths[id], product_data[id][1], product_data[id][2]) for id in ids]
        # print(dists)
        # print(ids)
        # print(scores)

        return render_template("index.html",query_path=uploaded_img_path, scores=scores)

    else:
        # openDb()
        # id_products = [0,2,3]
        # s = ','.join(str(x) for x in id_products)
        # product_data = []
        # sql = "SELECT * FROM product"
        # cursor.execute(sql)
        # results = cursor.fetchall()
        # for data in results:
        #     product_data.append(data)
        # closeDb()
        # print(product_data)
        return render_template("index.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0")