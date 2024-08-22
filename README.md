# Industrial Image Classification Projects
This repository contains two distinct projects focused on automating industrial image classification tasks using machine learning techniques in MATLAB.

## Table of Contents
### Valve Detection
### Concrete Crack Classification
### How to Use
### File Structure
### License

## Valve Detection
### Overview
The Valve Detection project aims to automate the detection of valves in industrial images, leveraging MATLAB's machine learning capabilities. This automation enhances efficiency, accuracy, and safety in industrial environments by reducing manual inspection efforts.

### Key Features
Data Acquisition: Collection of annotated valve images with bounding boxes.
Data Preprocessing: Image resizing, normalization, and augmentation using MATLAB's Image Processing Toolbox.
Model Training: Use of the ACF (Aggregate Channel Features) Object Detector for training.
Results: Achieves accurate valve detection across diverse environments.
Future Scope: Exploration of deep learning techniques like YOLO for improved accuracy.
### Files
ValveDetection.pdf: Documentation and results of the valve detection project.
GroundTruthData.mat: Annotated dataset of valve images.
acfDetector.mat: Trained ACF Object Detector model.

## Concrete Crack Classification

### Overview
The Concrete Crack Classification project focuses on detecting cracks in concrete images using a combination of Bag-of-Features and Support Vector Machine (SVM) classifier. This system is designed for applications in structural integrity assessment.

### Key Features
Data Collection: Dataset of 2000 labeled concrete images.
Feature Extraction: Bag-of-Features approach for extracting visual patterns from images.
Model Training: Training an SVM classifier to distinguish between cracked and crack-free images.
Results: Achieves 99% accuracy on both training and testing datasets.
Conclusion: The model is effective and robust, suitable for real-world applications in structural monitoring.

### Files
CrackClassification.pdf: Documentation and results of the crack classification project.
CrackImagesDataset: Labeled dataset of concrete images.
trainedClassifier.mat: Trained SVM classifier model.

## How to Use

### Clone the Repository:
git clone https://github.com/oukajbar/industrial-image-classification.git

### Navigate to the Desired Project:

### For Valve Detection:
cd ValveDetection

### For Concrete Crack Classification:
cd ConcreteCrackClassification

## License
This repository is licensed under the MIT License. See the LICENSE file for more information.
