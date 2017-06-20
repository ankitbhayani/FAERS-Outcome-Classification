# FAERS-Outcome-Classification

## Introduction
A web-based interactive system for adverse reaction detection and analysis. The problem addressed by this project is to classify the outcome of the drug reaction combination supplied to a patient based on the reported event. Since, we have different reported event by various organization we need to check whether the drug and reaction combination falls under following categories:

* Death
* Life-Threatening
* Hospitalization
* Initial or Prolonged
* Disability
* Congenital Anomaly
* Required Intervention
* Prevent Permanent Impairment/Damage
* Other Serious (Important Medical Event)

## Sections
* **Section 1: Data wrangling**:
  * Data Download and pre-processing
  * Exploratory Data analysis on Tableau
 
* **Section 2: Dockerizing the whole Process**:
  * Luigi Pipeline
  * Docker Image on Ubuntu
  * Result on Amazon S3
 
* **Section 3: Building and Evaluating  Multi  Class Classification Model**:
  * Classification using Multi-Class Logistic Regression, Multi-Class Random Forest, Multi-Class Neural Network, One vs All Multi-Class SVN Algorithms
 
* **Section 4: Creating User Interface for the FDA/Health Professional & User (Patient)**:
  * FDA/Health Professional: will use the user interface to predict the probability of the drug reaction -outcome based on certain parameters
  * User (Patient): Can search for adverse drug reaction which can be caused through a drug

## Docker Instructions:
   * docker pull ankitbhayani/finalprojectads2017
   * docker run -e ACCESS_KEY=<YOUR_ACCESS_KEY> -e SECRET_KEY=<YOUR_SECRET_KEY> -e S3_PATH=<YOUR_S3_PATH>  -e REGION=<BUCKET_REGION> ankitbhayani/finalprojectads2017 /src/driverShell.sh

## Youtube Link

[Project High-level Description](https://www.youtube.com/watch?v=RyIQayhLyBQ)
