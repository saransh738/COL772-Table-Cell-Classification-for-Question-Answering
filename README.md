# Table Cell Classification for Question Answering
## Motivation:
The motivation for this assignment is to become familiar with developing and implementing new neural models for a given input/output structure. We do this for the task of tabular QA.
The ability to understand and process tabular data is crucial in many fields, including finance, healthcare, and science. With the vast amount of information stored in tables,
there’s a growing need for models that can accurately interpret and answer questions based on tabular data. Further, tables are 2 dimensional, and direct use of sequence-to-sequence language models may not be the optimal approach. This assignment aims to give hands-on experience with this challenge, focusing on classifying table cells that contribute to answering a given question.

## Problem Statement:
The task is related to Table question answering. In particular, each question is accompanied by a database table, containing certain information. Given the question, we have
to output the correct answer. However, to make things simpler instead of answering the correct answer, we have to classify which cells correspond to the right answer.
We are tasked with developing a classification model that, given a question and a corresponding database table, identifies which cells correspond to the correct answer.
For example, given a database table on cricket, and the question: “Which teams defeated their opponents by more than 50 runs?” Your model should classify each cell in the table if it answers the question posed. That is, we will be classifying all cells of teams that meet the condition as positive while other cells as negative. 

## Characteristics of the Task:
* Each question is associated with a unique table, which may vary in schema and size. This means, we cannot use a fixed classification layer but require to encode
both the label space and input space, and look for similarities between them. For training, you may want to use negative sampling.
* The table is presented as a dictionary, requiring preprocessing to extract relevant information.
* For each <table, question> pair, multiple cells may be correct making it a multilabel problem.
* The output should classify relevant rows, columns, and cells, with the final accuracy being the mean of these individual accuracies. Note, that we will use subset accuracy for evaluation.
* The table may contain a mix of different types of data such as numerical, date, textual, etc. 
* A single table may be linked to multiple questions. Additionally, metadata is provided for each table, which can be utilized.

# Data:
We are providing a train dataset with 25K questions and a val set of 5K questions. Each data point is accompanied by corresponding tables and gold answers. The below Figure shows a representative example from the dataset.
![image](https://github.com/saransh738/COL772-Table-Cell-Classification-for-Question-Answering/assets/74806993/0c43ac2e-b3c6-48a6-80db-ab178d8b2538)
Question: What are the lowest number of wickets? 
Correct labels are marked in green.



## Evaluation Metric:
The model will be evaluated based on the subset (exact match) accuracy of row, column, and cell predictions individually, with the final score being the mean of these three accuracies. All evaluations will follow an all-or-nothing approach, rewarding only
completely correct classifications for each question.

## Usage:
### Using run.sh
The command to train the model is
````
bash run model.sh <train file> <val file>
````
This should save your model and any necessary files for inference.

The command to run inference using the model is
````
bash run model.sh test <test file> <pred file>
````
This should produce the prediction file in the specified output format.
