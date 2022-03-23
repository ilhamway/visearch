import numpy as np
from PIL import Image
from feature_extractor import FeatureExtractor
from datetime import datetime
from flask import Flask, request, render_template, url_for
from pathlib import Path

app = Flask(__name__, template_folder='frontend', static_folder='dataset')

fe = FeatureExtractor()
features = []
img_paths = []
for feature_path in Path("dataset/feature/").glob("*.npy"):
    features.append(np.load(feature_path))
    img_paths.append(Path("dataset/img/") / (feature_path.stem + ".jpg"))
feature = np.array(features)


@app.route("/", methods=["GET","POST"])
def index():
    if request.method == "POST":
        file = request.files["query_img"]

        #save image query
        img = Image.open(file.stream)
        uploaded_img_path = "dataset/uploaded/" + \
            datetime.now().isoformat().replace(":",".") + "_" + file.filename
        img.save(uploaded_img_path)
        uploaded_img_path_index = "../" + uploaded_img_path
        print(uploaded_img_path)
        print(uploaded_img_path_index)

        #run seacrh
        query = fe.extract(img)
        dists = np.linalg.norm(features - query, axis=1)
        ids = np.argsort(dists)[:20]
        scores = [(dists[id], img_paths[id]) for id in ids]

        return render_template("index.html",query_path=uploaded_img_path, scores=scores)

    else:
        return render_template("index.html")

if __name__ == "__main__":
    app.run()