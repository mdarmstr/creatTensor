function creatAnalysis(tnsr,creatMs2, creatMs3)

%Let's first load the two creatinine tensors

msx = 50:660;

%2tms
[~,ia,~] = intersect(creatMs2(:,1),msx);

loadCreat2 = creatMs2(ia,2);
loadCreat2 = loadCreat2 ./ norm(loadCreat2);

%3tms
[~,ia,~] = intersect(creatMs3(:,1),msx);

loadCreat3 = creatMs3(ia,2);
loadCreat3 = loadCreat3 ./ norm(loadCreat3);

%Creat the regression vector
%unfold the array:
sz = size(tnsr);
unfoldTnsr = reshape(permute(tnsr(:,:,:,1), [1, 3, 2, 4]), sz(1) * sz(3), sz(2));

pause();

end