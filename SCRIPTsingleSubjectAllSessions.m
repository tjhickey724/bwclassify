% 4-fold validation predicting the fourth session based on other three
% for one subject at a time...
subjects = [55,56,57,58,59,61,67,70,71]

results={}
for i = [1:9]
    dataset = createDataset(subjects(i));
    k=36;
    repetitions=1;
    [accuracy,alist,blist,wlist] = kmeansCrossoverValidation(dataset,k,repetitions);
    results{i} = [accuracy,mean(alist),mean(blist),mean(wlist),alist,blist,wlist];
    mw=mean(wlist)
end

results