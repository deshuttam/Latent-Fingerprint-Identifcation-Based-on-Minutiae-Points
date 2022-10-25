# Latent Fingerprint Identifcation System Based on a Local Combination of Minutiae Feature Points

By Uttam U. Deshpande et al.,

On the basis of the existing partial minutiae characteristics, we have developed Latent Fingerprint Identifcation System. We propose a scale and rotation invariant algorithm called “Ratio of Minutiae Triangles (RMT)”. The algorithm  utilizes the features which are based on the local minutiae arrangements around a reference minutia. To deal with missing minutiae in latent fngerprints, minutiae clusters based on nearest minutiae neighborhood relation to form hash structures. 
* To understand the implementation details, refer to the following paper [Latent Fingerprint Identifcation Based on Minutiae Points](https://doi.org/10.1007/s42979-021-00615-7)


## Introduction
We have developed a system that identifes a person with an existing small number of minutia features and without requiring fngerprint pre-alignment. A nearest minutiae neighbourhood-based latent fngerprint identifcation algorithm called “Ratio of Minutiae Triangles (RMT)” is proposed to solve fngerprint deformation, rotation, scale, and fingerprint alignment problems. We used NIST’s FpMV minutiae viewer an open-source minutiae detection tools to obtain reliable minutiae features to achieve better matching accuracy. Minutiae features are extracted in the form of x, y coordinates and are later read by the RMT algorithm for further matching operation.
The quality of latent NIST SD27 fngerprints is very low, and the automatic segmentation (ROI cropping), enhancement operations are carried out using our previosly developed "MINU-EXTRACTNET" framework. The minutiae features are extracted using the FpMV tool, and x, y minutiae coordinate information is passed onto the RMT algorithm to perform fngerprint-matching operation. 

![image](https://user-images.githubusercontent.com/107185323/197774869-7ee8292d-4ade-4cc9-aa57-de4c47e7ca5e.png)

## Ratio of Minutiae Triangles (RMT) Matching Algorithm
We start the fngerprint registration process on the gallery fngerprints stored in the background database. From the minutiae points extracted using the previous FpMV application, we select a reference minutia point. To generate minutiae invariants from the set of minutiae neighborhood points, we select ‘n’ minutia points (n=8) around a reference minutia ‘P’ and arrange them in clockwise sequence P1, P2, P3, P4, P6, P7, and P8 as shown in Fig. 7. 

![image](https://user-images.githubusercontent.com/107185323/197775124-eccf5fec-6425-4aec-9dd1-5a652ee2de93.png)

Hash Table Construction
The unique HTindex value, a Latent Fingerprint-ID (LFP-ID), a Latent Minutia-ID (LM-ID) and MAV are stored into the corresponding cell of the hash-table. These steps are repeated for the remaining minutia points present in the fngerprint, and a hash-table is constructed. 

![image](https://user-images.githubusercontent.com/107185323/197812764-f1df0ad8-d389-4c6d-8d6a-52235e31b853.png)

The FVC 2004 and NIST SD27 fingerprints are subjected to different rotation/scale operations and then the matching operations are performed.

![image](https://user-images.githubusercontent.com/107185323/197809235-1ff049da-1600-4ef0-abe3-4c29caf3e38f.png)

![image](https://user-images.githubusercontent.com/107185323/197777304-6f30b2d4-1793-463d-8881-df2b0ccb42d6.png)

The repository includes:

* Source code for Fingerprint Preprocessing.
* Source code for Feature Extraction.
* Source code for Latent minutiae representation, Fingerprint Hash-Table Construction and Matching.
* Visual Studio code, C, C++, Shell Script codes.

## Citing
@ARTICLE{ 10.1007/s42979-021-00615-7, AUTHOR={Deshpande, Uttam U. et al.,}, TITLE={Latent Fingerprint Identification System Based on a Local Combination of Minutiae Feature Points}, JOURNAL={SN Computer Science}, VOLUME={2}, YEAR={2021}, URL={ https://doi.org/10.1007/s42979-021-00615-7 }, DOI={ 10.1007/s42979-021-00615-7 }, ISSN={2661-8907}, }

Requirements: Software

* FpMV minutiae viewer
* `Python 2.7 Tensorflow 1.7.0 Keras 2.1.6`
* Visual Studio

## Preprocessing and Feature Extraction
* For FVC 2004 dataset, we utilize NIST’s `FpMV Minutiae Viewer` software. x, y minutiae coordinates are obtained and minutiae image is constructed.
* For NIST SD27 dataset, we use our previously developed `MINU-EXTRACTNET` framework for preprocessing operation [refer](https://github.com/deshuttam/MINU-EXTRACTNET). 
  For extracting the minutiae points we use `FpMV Minutiae Viewer` software.

## Hash Table Construction and Matching
* Place the minutia image obtained in the previous step into jpg folder.
* Run makedb command to construct the hash table from the latent minutiae cluster.
* Refer the work for [reference](https://github.com/opu-imp/LLAH-Nakai).

Matching
* Run server.exe command.
* Run client.ext command to turn the camera on.
* Print the minutiae image to be tested on a paper and hold infront of the camera to perform matching.
* Refer the work for [reference](https://github.com/opu-imp/LLAH-Nakai).

## Installation
* Download `MINU-EXTRACTNET` framework from the link [MINU-EXTRACTNET](https://github.com/deshuttam/MINU-EXTRACTNET).
* Download `FpMV Minutiae Viewer` using this link [FpMV Minutiae Viewer](https://www.nist.gov/services-resources/software/fingerprint-minutiae-viewer-fpmv). Run `FpMV.exe` from bin folder.

Download models and put into Models folder.
* MINU-EXTRACTNET: [Googledrive](https://drive.google.com/file/d/1e-fvLhwvw8Sg1uVkM6oBT6QncWZgloap/view?usp=sharing)
* CoarseNet: [Googledrive](https://drive.google.com/file/d/1bU3T-XQRlKy6C77e5eD-DOD_QlNlAIjR/view?usp=sharing)
* FineNet: [Googledrive](https://drive.google.com/file/d/1rQw6hs-3hv_7WqJQ8ZYhJhi4laa-9qbY/view?usp=sharing)

## Usage
* MINU-EXTRACTNET: MINU-EXTRACTNET.ipynb can be called to segment and enhance (preprocess) the images.
* `FpMV.exe` can be called to extract minutiae features from the preprocessed images obtained from `MINU-EXTRACTNET`.
* These minutiae points should be represented in the form of a image.
* Run `server.exe`, `Run client.exe` command to turn the camera on to perfrom matching. Refer to this work [Experimental Study](https://github.com/deshuttam/Minutiae-Clustering-based-Latent-Fingerprint-Matching-Systems)
