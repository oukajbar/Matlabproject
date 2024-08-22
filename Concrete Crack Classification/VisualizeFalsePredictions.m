function VisualizeFalsePredictions(dsTrain, predTableTrain, predictedLabelsTrain)
    % Get indices of correct predictions, false negatives, and false positives
    falseNegIdx = find(predTableTrain.labels == 'Crack' & predictedLabelsTrain == 'No Crack');
    falsePosIdx = find(predTableTrain.labels == 'No Crack' & predictedLabelsTrain == 'Crack');

    % Visualize false negatives
    
    for i = 1:numel(falseNegIdx)
        %subplot(3, numel(falseNegIdx), i);
        figure;
        imshow(dsTrain.Files{falseNegIdx(i)});
        title('False Negative');
    end

    % Visualize false positives
    for i = 1:numel(falsePosIdx)
        figure;
        %subplot(3, numel(falsePosIdx), numel(falseNegIdx) + i);
        imshow(dsTrain.Files{falsePosIdx(i)});
        title('False Positive');
    end
end
