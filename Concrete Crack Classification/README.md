# Concrete Crack Classification using Bag-of-Features and SVM
This project focuses on developing a robust classification system to detect cracks in concrete images using traditional machine learning methods.

## Project Overview
The accurate detection of cracks in concrete is crucial for maintaining structural integrity and safety. This project utilizes a Bag-of-Features approach combined with a Support Vector Machine (SVM) classifier to categorize images as either containing cracks or being crack-free.

## Methodology
### Data Collection: A dataset of 2000 images of concrete surfaces was collected, labeled with the presence or absence of cracks.

### Feature Extraction: The Bag-of-Features technique was used to extract visual patterns from the images, providing a compact representation for classification.

### Model Training: The extracted features were used to train an SVM classifier. SVM is known for its effectiveness in separating classes by finding the optimal hyperplane in the feature space.

### Evaluation: The model was evaluated using metrics like accuracy, precision, recall, and F1-score, achieving an impressive 99% accuracy on both training and testing datasets.

## Results
The classification system achieved a 99% accuracy rate, demonstrating its effectiveness in distinguishing between concrete images with and without cracks.
The robustness of the model makes it suitable for real-world applications, such as automated inspection and monitoring of concrete structures.

## Files in the Repository
### CrackClassification.pdf: Detailed documentation and results of the crack classification project.
### CrackImagesDataset: The dataset of labeled concrete images.
### trainedClassifier.mat: The trained SVM classifier model.

## Usage Instructions
Load the concrete images dataset using the provided MATLAB script.
Extract features using the Bag-of-Features approach.
Train the SVM classifier using the TrainClassifierAndEvaluate() function.
Test the model on new images and visualize false predictions if needed.

## Summary and Conclusion
This project successfully developed a concrete crack classification system using traditional machine learning techniques. The model's high accuracy without relying on deep learning approaches highlights the effectiveness of the chosen methods. Future work could explore further improvements or the application of similar techniques to other classification tasks.
