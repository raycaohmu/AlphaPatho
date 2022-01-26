#!/usr/bin/env python
# coding=utf-8
# from torch.data.utils import Dataset
# import pandas as pd
# from PIL import Image

# import random
# from glob import glob
import cv2
import numpy as np
import lmdb
import pyarrow as pa
from glob import glob
import pandas as pd


def dumps_pyarrow(obj):
    return pa.serialize(obj).to_buffer()


def raw_reader(path):
    with open(path, "rb") as f:
        bin_data = f.read()
    return bin_data


# df = pd.read_csv("./slides2.csv")
# df = pd.read_csv("./slides3.csv")
# df = pd.read_csv("./slides4.csv")
# df = pd.read_csv("./csv_path/beijing_norm.csv")
# df = pd.read_csv("./csv_path/cptac_slides.csv")
# df = pd.read_csv("./csv_path/cptac_slides_nonorm.csv")
# df = pd.read_csv("./csv_path/jiangsu_nonorm.csv")
# df = pd.read_csv("./csv_path/shenzhen_norm.csv")
# df = pd.read_csv("./csv_path/shenzhen_nonorm.csv")
# df = pd.read_csv("./csv_path/stanford_norm.csv")
# df = pd.read_csv("./csv_path/stanford_nonorm.csv")
# df = pd.read_csv("/mnt/usb3/beijing2/beijing2_lmdb_norm.csv")
df = pd.read_csv("/mnt/usb3/beijing2/beijing2_lmdb.csv")
# df = pd.read_csv("./csv_path/jiangsu_norm.csv")
case_dirs = list(df.slides_name)
# case_dirs = case_dirs[:60]
# case_dir = "./tile_dir_256/TCGA-05-4244-01Z-00-DX1.d4ff32cd-38cf-40ea-8213-45c2b100ac01_0316/"
# image_path = "./tile_dir_256/TCGA-05-4244-01Z-00-DX1.d4ff32cd-38cf-40ea-8213-45c2b100ac01_0316/10240x10752.png"
# images_paths = glob(case_dir + "/*.png")
# flag = image_path.split("/")[-2] + "_" + image_path.split("/")[-1]
# env = lmdb.open("./lmdb_dir")
# cache = {}

# with open(image_path, "rb") as f:
#     image_bin = f.read()

# cache[flag] = image_bin

# with env.begin(write=True) as txn:
#     for k, v in cache.items():
#         if isinstance(v, bytes):
#             txn.put(k.encode(), v)
#         else:
#             txn.put(k.encode(), v.encode())

# env.close()
# flag = image_path.split("/")[2] + "_" + image_path.split("/")[3]
# lmdb_path = "./lmdb_dir"
# lmdb_path = "./lmdb_dir_beijing"
# lmdb_path = "/mnt/usb/lmdb_dir_cptac"
# lmdb_path = "../lmdb_dir_external/lmdb_dir_jiangsu_norm"
# lmdb_path = "./lmdb_dir_cptac_norm"
# lmdb_path = "./lmdb_dir_cptac"
# lmdb_path = "./lmdb_dir_jiangsu"
# lmdb_path = "./lmdb_dir_shenzhen_norm"
# lmdb_path = "./lmdb_dir_shenzhen_nonorm"
# lmdb_path = "./lmdb_dir_stanford_norm"
# lmdb_path = "./lmdb_dir_stanford_nonorm"
# lmdb_path = "./lmdb_dir_beijing2_norm"
lmdb_path = "./lmdb_dir_beijing2_nonorm"
db = lmdb.open(lmdb_path, map_size=1099511627776 * 5, readonly=False,
               meminit=False, map_async=True)
write_frequency = 1000
# txn = db.begin(write=True)
for case_idx, case_dir in enumerate(case_dirs):
    print("====[%d/%d]====" % (case_idx+1, len(case_dirs)))
    txn = db.begin(write=True)
    images_paths = glob(case_dir + "/*.png")
    for idx, image_path in enumerate(images_paths):
        image = raw_reader(image_path)
        flag = image_path.split("/")[-2] + "_" + image_path.split("/")[-1] 
        txn.put(flag.encode(), dumps_pyarrow(image))
        if idx % write_frequency == 0:
            print("[%d/%d]" % (idx, len(images_paths)))
            txn.commit()
            txn = db.begin(write=True)

    txn.commit()
    # keys = [k.encode() for k in images_paths]
    # with db.begin(write=True) as txn:
        # txn.put(b'__keys__', dumps_pyarrow(keys))
        # txn.put(b'__len__', dumps_pyarrow(len(keys)))
print("Flushing database")
db.sync()
db.close()
print("Done")
