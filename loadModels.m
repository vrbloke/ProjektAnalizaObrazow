function [dur,jas,kli,kos,pol] = loadModels()
    load jasinski.mat;
    jas = dlnetTransform;
    
    load durer.mat;
    dur = dlnetTransform;
    
    load klimt.mat;
    kli = dlnetTransform;
    
    load pollock.mat;
    pol = dlnetTransform;
    
    load kossak.mat;
    kos = dlnetTransform;
end