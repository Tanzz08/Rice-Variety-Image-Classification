# 🌾 Rice Variety Image Classification

Proyek ini adalah implementasi model klasifikasi citra untuk mengidentifikasi jenis-jenis beras berdasarkan gambar. Model ini dilatih menggunakan dataset dari Kaggle dan dikembangkan dengan TensorFlow serta Keras.

---

## 📚 Dataset

Dataset yang digunakan dalam proyek ini adalah [Rice Image Dataset](https://www.kaggle.com/datasets/muratkokludataset/rice-image-dataset). Dataset ini terdiri dari lima jenis beras:

- Arborio
- Basmati
- Ipsala
- Jasmine
- Karacadag

Setiap kelas berisi gambar beras yang diambil dalam kondisi yang seragam.

---

## 🛠️ Teknologi dan Library

### Library Umum
- `os`, `shutil`, `zipfile`, `random`, `pathlib`
- `numpy`, `pandas`
- `matplotlib`, `seaborn`
- `tqdm`

### Pemrosesan Gambar
- `cv2` (OpenCV)
- `PIL` (Pillow)
- `skimage`

### Pengembangan Model
- `TensorFlow`, `Keras`
- `scikit-learn`

---

## ⚙️ Preprocessing dan Augmentasi

Beberapa teknik augmentasi yang digunakan:
- Resize dan rotasi
- Transformasi affine
- Penyesuaian gamma
- Penambahan noise

Augmentasi dilakukan menggunakan kombinasi dari `skimage`, `OpenCV`, dan `ImageDataGenerator` dari Keras.

---

## 🧠 Arsitektur Model

Model yang digunakan berbasis pada:
- `Sequential` model dari Keras
- Convolutional layers (`Conv2D`, `SeparableConv2D`)
- `BatchNormalization`, `Dropout`
- Dense layers dan `Softmax` untuk klasifikasi akhir

Optimizers yang digunakan:
- `Adam`

---

## 🧪 Evaluasi

Model dievaluasi menggunakan:
- Confusion Matrix
- Classification Report
- Akurasi pada data uji
- Early stopping dan learning rate scheduler untuk mencegah overfitting

---

## 🔄 Konversi Model

Setelah model dilatih, dilakukan konversi ke berbagai format:
- `.h5` (Keras model)
- `SavedModel` (format standar TensorFlow)
- `.tflite` (untuk deployment di perangkat mobile)
- TensorFlow.js (`tfjs`) (untuk deployment di web)

---
