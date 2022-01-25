function image = styleTransfer(imFilename, model)
    "Przenoszenie stylu trwa..."
    im = imread(imFilename);
    im = imresize(im,[256,256]);
    dlX = dlarray(single(im),'SSCB');
    if canUseGPU
        dlX = gpuArray(dlX);
    end
    dlY = predict(model,dlX);
    Y = 255*(tanh(dlY)+1)/2;
    Y = uint8(gather(extractdata(Y)));
    image = Y;
end