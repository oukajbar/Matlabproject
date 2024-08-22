function displayBoundingBoxesOverlap(imdsTest, gTruthTest, bboxes, numImages)
    % Iterate over each image in the dataset
    for idx = 1:height(imdsTest.Files)
        % Load the image
        img = readimage(imdsTest, idx);

        % Insert the ground truth bounding box
        img = insertShape(img, "Rectangle", gTruthTest.LabelData.valves{idx}, ...
            "Color", "green", "LineWidth", 10);

        % Extract detected bounding boxes and scores
        detectedBoxes = bboxes.Boxes{idx};
        scores = bboxes.Scores{idx};

        % Initialize indices of boxes to keep
        boxesToKeep = true(size(detectedBoxes, 1), 1);

        % Check for intersecting boxes
        for i = 1:size(detectedBoxes, 1)
            for j = i+1:size(detectedBoxes, 1)
                if bboxOverlapRatio(detectedBoxes(i, :), detectedBoxes(j, :)) > 0
                    % If boxes intersect, keep the one with the higher score
                    if scores(i) > scores(j)
                        boxesToKeep(j) = false; % Discard box j
                    else
                        boxesToKeep(i) = false; % Discard box i
                    end
                end
            end
        end

        % Insert the detected bounding boxes with scores > 50 and non-intersecting
        for i = 1:size(detectedBoxes, 1)
            if scores(i) > 50 && boxesToKeep(i)
                img = insertObjectAnnotation(img, "Rectangle", detectedBoxes(i, :), ...
                    "Score: " + scores(i), "FontSize", 40, "LineWidth", 6);
            end
        end

        % Display the image
        if idx <= numImages
            figure
            imshow(img)
        end
    end
end
