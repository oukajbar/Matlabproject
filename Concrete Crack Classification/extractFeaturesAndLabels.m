function [predTableTrain, predTableTest] = extractFeaturesAndLabels(dsTrain, dsTest)
    % Define the filename for saving the bag of features
    bagFileName = 'bagOfFeatures.mat';

    % Check if the bag of features file exists
    if exist(bagFileName, 'file')
        % Load the bag of features from the file
        loadedData = load(bagFileName);
        bag = loadedData.bag;
    else
        % Measure time for bag of features creation
        tic
        bag = bagOfFeatures(dsTrain, 'Verbose', false, 'GridStep', [32 32]);
        T = toc;

        % Save the bag of features to a file
        save(bagFileName, 'bag');
    end

    % Encode features for training dataset
    predFeatsTrain = encode(bag, dsTrain);
    featNames = "f" + string(1:500);
    predTableTrain = array2table(predFeatsTrain, 'VariableNames', featNames);
    predTableTrain.labels = categorical(dsTrain.Labels);

    % Encode features for testing dataset
    predFeatsTest = encode(bag, dsTest);
    featNames = "f" + string(1:500);
    predTableTest = array2table(predFeatsTest, 'VariableNames', featNames);
    predTableTest.labels = categorical(dsTest.Labels);
end
