import java.awt.Robot;
import java.awt.event.*;

%% Load a pre-trained, deep, convolutional network
alex = alexnet;
layers = alex.Layers

%% Modify the network to use one category
layers(23) = fullyConnectedLayer(2); 
layers(25) = classificationLayer

%% Set up our training data
allImages = imageDatastore('myImages', 'IncludeSubfolders', true, 'LabelSource', 'foldernames');
[trainingImages, testImages] = splitEachLabel(allImages, 0.8, 'randomize');

%% Re-train the Network
opts = trainingOptions('sgdm', 'InitialLearnRate', 0.001, 'MaxEpochs', 20, 'MiniBatchSize', 64);
myNet = trainNetwork(trainingImages, layers, opts);

%% Measure network accuracy
%predictedLabels = classify(myNet, testImages); 
%accuracy = mean(predictedLabels == testImages.Labels)
%predictedLabels

threshold = input("Enter number of seconds to set permissible gap: ");
camera = webcam;
countNotFound = 0;
while true
    picture = camera.snapshot;
    image(picture); % Showing the picture
    picture = imresize(picture,[227 227]);
    drawnow;
    title("Yashasvi")
    predictedLabels = classify(myNet, picture);
    if string(predictedLabels) ~= "Yashasvi"
        title("User Not Found")
        countNotFound = countNotFound + 1;
    else
        countNotFound = 0;
    end
    
    if countNotFound >= (threshold)
        r = java.awt.Robot();
        % win + x
        r.keyPress(KeyEvent.VK_WINDOWS);
        r.keyPress(KeyEvent.VK_X);
        r.keyRelease(KeyEvent.VK_WINDOWS);
        r.keyRelease(KeyEvent.VK_X);
        % u
        r.keyPress(KeyEvent.VK_U);
        r.keyRelease(KeyEvent.VK_U);
        % s
        r.keyPress(KeyEvent.VK_S);
        r.keyRelease(KeyEvent.VK_S);
    end
    pause(1);
end

