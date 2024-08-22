function displayCrackImages()
    % Figure for images without crack
    figure('Position', [100, 100, 800, 600]);
    subplot(2, 2, 1);
    imshow('01247.jpg');
    title('Without Crack');

    subplot(2, 2, 2);
    imshow('01249.jpg');
    title('Without Crack');

    subplot(2, 2, 3);
    imshow('01251.jpg');
    title('Without Crack');

    subplot(2, 2, 4);
    imshow('01252.jpg');
    title('Without Crack');

    % Figure for images with crack
    figure('Position', [100, 100, 800, 600]);
    subplot(2, 2, 1);
    imshow('00255.jpg');
    title('With Crack');

    subplot(2, 2, 2);
    imshow('00430.jpg');
    title('With Crack');

    subplot(2, 2, 3);
    imshow('00513.jpg');
    title('With Crack');

    subplot(2, 2, 4);
    imshow('00543.jpg');
    title('With Crack');
end
