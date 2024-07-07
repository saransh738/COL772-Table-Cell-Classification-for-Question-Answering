# Table Cell Classification for Question Answering

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
