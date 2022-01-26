<p align="center"><img width="500" src="https://s2.loli.net/2021/12/15/yKHAZdEuz5lPs1h.png"></p>
<p align="center">
  <a><img src="https://img.shields.io/circleci/project/github/vuejs/vue/dev.svg" alt="Build Status"></a>
  <a><img src="https://img.shields.io/npm/l/vue.svg" alt="License"></a>
</p>

<h2 align="center">AlphaPatho - Powerful Computational Pathology Tool</h2>
<p align="center"><b>Paper: An end-to-end and well-generalized weakly supervised whole slide image analysis for lung cancer classification using deep learning</b></p>

# Contents

- [Framework](#Framework)
- [Ecosystem](#Ecosystem)
- [QuickStart](#QuickStart)
  - [Install](#Install)
  - [Usage](#Usage)
- [Contribution](#Contribution)
- [Maintainers](#Maintainers)
- [License](#license)

## Framework

<p align="center"><img width="800" src="https://cdn.jsdelivr.net/gh/DeepLaboratory/AlphaPatho@main/githubpics/githubframe.png"></p>

## Ecosystem

| **Pretrained weights**                                       | **Description**     |
| ------------------------------------------------------------ | ------------------- |
| [Fold1](https://drive.google.com/file/d/1nLcq3bhwCCHhvTPI1KzF5drASeoAm0Ls/view?usp=sharing) | Fold1 model weights |
| [Fold2](https://drive.google.com/file/d/1vBULFVk8iFaNdDU0vzqv8hV57XkXF0mz/view?usp=sharing) | Fold2 model weights |
| [Fold3](https://drive.google.com/file/d/1sABfvy9twMyNal-s1Lv9XAUkdB08WtfW/view?usp=sharing) | Fold3 model weights |
| [Fold4](https://drive.google.com/file/d/1aYzrOw1aXFw1WPmvtZXtJn7NqcE04exY/view?usp=sharing) | Fold4 model weights |
| [Fold5](https://drive.google.com/file/d/1870bwtM676d7MI0qNbIZi5tT66MIR2La/view?usp=sharing) | Fold5 model weights |

### Why AlphaPatho

- Weakly supervised learning (No expensive annotations)
- End-to-end pipeline (Iterative sampling and feature aggregation module)
- Data efficiency (<200 images, AUCs of >0.9)
- Promising generalizability (six heterogenous external datasets with AUCs of 0.93-0.97)
- Overperform state-of-the-art methods

<p align="center"><img width="800" src="https://cdn.jsdelivr.net/gh/DeepLaboratory/AlphaPatho@main/githubpics/boxplot.png"></p>

## QuickStart

### Install

System: Linux(CentOS)
Pytorch (version 1.7.0): model training and validation.
OpenSlide (version 3.4.1): processing whole slide images.
lmdb (version 1.3.0): building lmdb dataset for faster data loading.
staintools: following https://github.com/Peter554/StainTools. 

```bash
$ git clone https://github.com/DeepLaboratory/AlphaPatho.git # install AlphaPatho
$ cd AlphaPatho
```

Directory description:

```
├─ data.py                 // dataset code
├─ mean_pixel.pkl		   // mean value of pixel value for data augmentation
├─ model.py				   // model architecture
├─ run.py		           // main code for training and validation
├─ run.sh                  // run.py launcher
├─ test.py                 // main code for inference or evaluation
├─ run_test.sh             // test.py launcher
├─ utils.py                // tool code
├─ tmp.py                  // LMDB dataset building code
```

### Usage

#### Train from scratch

- Slide tiling: see methods in our paper. When tiling is done, we should have files like below:

  ```
  ├─ slide1_folder
  │  ├─ tile1.png
  │  ├─ tile2.png
  │  ├─ ...
  ├─ slide2_folder
  │  ├─ tile1.png
  │  ├─ tile2.png
  │  ├─ ...
  ├─ ...
  ```

- csv for LMDB dataset generation: after slide tiling, we need to generate a csv used for LMDB dataset generation. The csv content is as follow:

  | **slides_name**   | **label** |
  | ----------------- | --------- |
  | xxx/slide1_folder | 1         |
  | xxx/slide2_folder | 0         |
  | ... ...           | ...       |

- Building LMDB dataset

  tmp.py is the main code. We need to modify the csv path and lmdb dataset save directory. Using tmp.py, we can generate the LMDB dataset.

- Dataset preparation: preparing csv files for 5-fold validation, the format of each csv file is like follows:

  | **slides_name**   | **label** |
  | ----------------- | --------- |
  | xxx/slide1_folder | 1         |
  | xxx/slide2_folder | 0         |
  | ... ...           | ...       |

  After cvs preparation, we will get train.csv, val.csv, and test.csv for each fold.

- Model training: run run.sh and start training.

#### Model inference or test

Preparing datasets for testing, modifying the parameters in the run_test.sh, and runing run_test.sh for testing!

## Contribution

<table>
    <tbody>
        <tr>
            <td>
                <a target="_blank" href="https://github.com/DeepLaboratory"><img width="60px" src="https://ghproxy.fsou.cc/https://github.com/DeepLaboratory/AlphaPatho/blob/main/githubpics/photo.jpg"></a>
            </td>
        </tr>
    </tbody>
</table>

## Maintainers

- [DeepLaboratory](https://github.com/DeepLaboratory)

## License

- [MIT](https://opensource.org/licenses/MIT)
