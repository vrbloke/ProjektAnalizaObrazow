function [dur,jas,kli,kos,pol] = loadModels()
    load jasinski.mat;
    jas = dlnetTransform;
    "Zakończono ładowanie modelu 1/5..."
    load durer.mat;
    dur = dlnetTransform;
    "Zakończono ładowanie modelu 2/5..."
    load klimt.mat;
    kli = dlnetTransform;
    "Zakończono ładowanie modelu 3/5..."
    load pollock.mat;
    pol = dlnetTransform;
    "Zakończono ładowanie modelu 4/5..."
    load kossak.mat;
    kos = dlnetTransform;
    "Zakończono ładowanie modelu 5/5..."
end