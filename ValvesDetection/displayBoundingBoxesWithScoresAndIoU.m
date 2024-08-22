function displayBoundingBoxesWithScoresAndIoU(imdsTest, gTruthTest, bboxes, maxImages)
    % Initialize the counter for processed images
    %imagesProcessed = 0;
    %outputDir="C:\Users\ONASTORE\Desktop\COMPUTER VESION\objectDetection\detection";
    for idx = 1:height(imdsTest.Files)
        % Load the image
        img = readimage(imdsTest, idx);

        % Insert the ground truth bounding box
        gtBox = gTruthTest.LabelData.valves{idx};
        img = insertShape(img, "Rectangle", gtBox, ...
            "Color", "green", "LineWidth", 10);

        % Extract scores and boxes
        detectedBoxes = bboxes.Boxes{idx};
        scores = bboxes.Scores{idx};

        % Display boxes with scores > 50
        highScoreIndices = scores > 50;
        highScoreBoxes = detectedBoxes(highScoreIndices, :);
        highScoreScores = scores(highScoreIndices);
        for i = 1:size(highScoreBoxes, 1)
            img = insertObjectAnnotation(img, "Rectangle", highScoreBoxes(i, :), ...
                "Score: " + highScoreScores(i), "FontSize", 40, "LineWidth", 6);
        end

        % Save the image with bounding boxes if not exceeding maxImages
        % if imagesProcessed < maxImages
        %     [~, name, ext] = fileparts(imdsTest.Files{idx});
        %     outputFileName = fullfile(outputDir, [name, ext]);
        %     imwrite(img, outputFileName);
        %     imagesProcessed = imagesProcessed + 1;
        % end

        % Display the image
        if idx <= maxImages
            figure
            imshow(img)
        end
    end
end