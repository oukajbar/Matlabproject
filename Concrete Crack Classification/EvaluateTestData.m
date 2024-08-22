function predictedLabelsTest =EvaluateTestData(trainedClassifier, predTableTest)
    % Get predicted labels for test data
    predictedLabelsTest = trainedClassifier.predictFcn(predTableTest);

    % Compute confusion matrix
    confMatTest = confusionmat(predTableTest.labels, predictedLabelsTest);

    % Display confusion matrix as a plot
    figure;
    confusionchart(confMatTest, {'No Crack', 'Crack'});
    title('Confusion Matrix for Testing Data');

    % Get scores for test data
    [~, scoresTest] = trainedClassifier.predictFcn(predTableTest);

    % Compute ROC curve
    [fprTest, tprTest, ~, aucTest] = perfcurve(predTableTest.labels, scoresTest(:, 2), 'Crack');

    % Plot ROC curve
    figure;
    plot(fprTest, tprTest);
    xlabel('False Positive Rate');
    ylabel('True Positive Rate');
    title(['ROC Curve for Test Data (AUC = ', num2str(aucTest), ')']);
end
