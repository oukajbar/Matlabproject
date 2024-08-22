function [imdsTest, bboxes] = loadAndDetectBoxes(gTruthTrain)
    % Load the bounding box data
    

    % Prompt user to select test data directory
    %path= "C:\Users\ONASTORE\Desktop\COMPUTER VESION\objectDetection\Test";

    % Overwrite ground truth locations
    testPath = overwriteGTruthLocations(gTruthTrain);

    % Generate object training data
    objectTrainingData = objectDetectorTrainingData(gTruthTrain);

    detectorFile = 'acfDetector.mat'
    if ~exist(detectorFile, 'file')
        acfDetector = trainACFObjectDetector(objectTrainingData,ObjectTrainingSize=[100,100],NumStages=8,NegativeSamplesFactor=8,MaxWeakLearners=3500,Verbose=false);
        save(detectorFile, 'acfDetector');
    else
        % Load ACF object detector from file
        loadedData = load(detectorFile);
        acfDetector = loadedData.acfDetector;
    end
    % Create an imageDatastore for the test images
    imdsTest = imageDatastore(testPath)

    % Detect bounding boxes in test images
    bboxes = detect(acfDetector, imdsTest)

    % Return the necessary data
    %gTruthTest = testPath;
end