function [trainedClassifier, validationAccuracy,predictedLabelsTrain] = TrainClassifierAndEvaluate(predTableTrain)
    % Train the classifier
    [trainedClassifier, validationAccuracy] = ClassifierSVM(predTableTrain);

    % Get predicted labels and scores for training data
    [predictedLabelsTrain, scoresTrain] = trainedClassifier.predictFcn(predTableTrain);

    % Compute confusion matrix
    confMatTrain = confusionmat(predTableTrain.labels, predictedLabelsTrain);

    % Display confusion matrix as a plot
    figure;
    confusionchart(confMatTrain, {'No Crack', 'Crack'});
    title('Confusion Matrix for Training Data');

    % Compute ROC curve
    [fprTrain, tprTrain, ~, aucTrain] = perfcurve(predTableTrain.labels, scoresTrain(:, 2), 'Crack');

    % Plot ROC curve
    figure;
    plot(fprTrain, tprTrain);
    xlabel('False Positive Rate');
    ylabel('True Positive Rate');
    title(['ROC Curve for Training Data (AUC = ', num2str(aucTrain), ')']);
end
