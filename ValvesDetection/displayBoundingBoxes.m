function displayBoundingBoxes(imdsTest, gTruthTest, bboxes, numImages)
    % Iterate over each image in the dataset
    for idx = 1:height(imdsTest.Files)
        % Load the image
        img = readimage(imdsTest, idx);

        % Insert the ground truth bounding box
        img = insertShape(img, "Rectangle", gTruthTest.LabelData.valves{idx}, ...
            "Color", "green", "LineWidth", 10);

        % Insert the detected bounding box
        img = insertObjectAnnotation(img, "Rectangle", bboxes.Boxes{idx}, ...
            "Score: " + bboxes.Scores{idx}, "FontSize", 40, "LineWidth", 6);

        % Display the image
        if idx <= numImages
            figure
            imshow(img)
        end
    end
end