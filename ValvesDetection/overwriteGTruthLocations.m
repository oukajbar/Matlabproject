function testPath = overwriteGTruthLocations(gTruthTrain)
% Find the location of the image files
trainPath = fileparts(which("image_0.JPG"));
if isempty(trainPath)
    error("The course files are not on the MATLAB search path." + ...
        "Follow the instructions when downloading the course " + ...
        "files to add them to your path.")
end

% Overwrite locations for images
currentPath = string(fileparts(gTruthTrain.DataSource.Source{1}));
changeFilePaths(gTruthTrain,[currentPath, trainPath]);

% Save the test path
%testPath = erase(trainPath,'\Train') + "\Test";
testPath =trainPath +"\Test";
end