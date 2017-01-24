
% Use Arrow keys
%                          \uparrow
%   \leftarrow   \downarrow   \rightarrow
%                                                 to move toward the empty
%                                                 space.
%% Init
clc;clear;close all;warning off;
im = imread('im2.jpg');
im1 = imresize(im,[800 800]);
imshow(im1);
text(250,300,'You Have 2 Mins To Solve it !','FontSize',18,'Color','y');
text(250,350,'          Use Arrow Keys : ','FontSize',14,'Color','y');
text(295,400,'            \uparrow','FontSize',20,'Color','y','FontWeight','Bold'); 
text(225,450,'            \leftarrow   \downarrow   \rightarrow','FontSize',20,'Color','y','FontWeight','Bold'); 
text(200,750,'Coded by Chakri(r111544)','FontSize',14,'Color','blue','FontWeight','Bold');
pause(5)
res=1;
for i = 1:3
    part1(:,:,i) = im1(1:200,1:200,i);
end
for i = 1:3
    part5(:,:,i) = im1(1:200,201:400,i);
end
for i = 1:3
    part9(:,:,i) = im1(1:200,401:600,i);
end
for i = 1:3
    part13(:,:,i) = im1(1:200,601:800,i);
end
for i = 1:3
    part2(:,:,i) = im1(201:400,1:200,i);
end
for i = 1:3
    part6(:,:,i) = im1(201:400,201:400,i);
end
for i = 1:3
    part10(:,:,i) = im1(201:400,401:600,i);
end
for i = 1:3
    part14(:,:,i) = im1(201:400,601:800,i);
end
for i = 1:3
    part3(:,:,i) = im1(401:600,1:200,i);
end
for i = 1:3
    part7(:,:,i) = im1(401:600,201:400,i);
end
for i = 1:3
    part11(:,:,i) = im1(401:600,401:600,i);
end
for i = 1:3
    part15(:,:,i) = im1(401:600,601:800,i);
end
for i = 1:3
    part4(:,:,i) = im1(601:800,1:200,i);
end

for i = 1:3
    part8(:,:,i) = im1(601:800,201:400,i);
end
for i = 1:3
    part12(:,:,i) = im1(601:800,401:600,i);
end
for i = 1:3
    part91(:,:,i) = im1(601:800,601:800,i);
end
part16 = uint8(0.941*ones(200,200,3));
partf = {part1 part5 part9 part13 part2 part6 part10 part14 part3 part7 part11 part15 part4 part8 part12 part91};
part = {part1 part5 part9 part13 part2 part6 part10 part14 part3 part7 part11 part15 part4 part8 part12 part16};
%%
part11 = cell(4,4);
s = creat;
for i = 1:16
    ind = s(i);
    part11(i) = part(ind);
end
part2 = part11;
img = cell2mat(part2);
imshow(img);
move = 0;
tic
%% PLAY 
while ~isequal(s,[1:4;5:8;9:12;13:16])
    move = move + 1;
    k = waitforbuttonpress;
    cc = get(gcf,'CurrentKey');
    ind = find(s==16);
    switch ind
        case 1
            if strcmp(cc,'uparrow')
                s = swapmat(s,1,2);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,1,5);
            else
                s = s;
            end
            
        case 2
            if strcmp(cc,'uparrow')
                s = swapmat(s,2,3);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,2,6);
            elseif strcmp(cc,'downarrow');
                s = swapmat(s,2,1);
            else
                s = s;
            end
            
         case 3
            if strcmp(cc,'uparrow')
                s = swapmat(s,3,4);
            elseif strcmp(cc,'downarrow')
                s = swapmat(s,3,2);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,3,7);
            else
                s = s;
            end
            
        case 4
            if strcmp(cc,'downarrow')
                s = swapmat(s,4,3);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,4,8);
            else
                s = s;
            end
            
        case 5
            if strcmp(cc,'uparrow')
                s = swapmat(s,5,6);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,5,9);
            elseif strcmp(cc,'rightarrow');
                s = swapmat(s,5,1);
            else
                s = s;
            end
                
        case 6
            if strcmp(cc,'uparrow')
                s = swapmat(s,6,7);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,6,10);
            elseif strcmp(cc,'downarrow');
                s = swapmat(s,6,5);
            elseif strcmp(cc,'rightarrow')
                s = swapmat(s,6,2);
            else
                s = s;
            end
        
        case 7
            if strcmp(cc,'uparrow')
                s = swapmat(s,7,8);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,7,11);
            elseif strcmp(cc,'downarrow');
                s = swapmat(s,7,6);
            elseif strcmp(cc,'rightarrow')
                s = swapmat(s,7,3);
            else
                s = s;
            end
       
        case 8
            if strcmp(cc,'downarrow')
                s = swapmat(s,8,7);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,8,12);
            elseif strcmp(cc,'rightarrow');
                s = swapmat(s,8,4);
            else
                s = s;
            end
         
        case 9
            if strcmp(cc,'uparrow')
                s = swapmat(s,9,10);
            elseif strcmp(cc,'rightarrow')
                s = swapmat(s,9,5);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,9,13);
            else
                s = s;
            end
            
         case 10
            if strcmp(cc,'uparrow')
                s = swapmat(s,10,11);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,10,14);
            elseif strcmp(cc,'downarrow');
                s = swapmat(s,10,9);
            elseif strcmp(cc,'rightarrow')
                s = swapmat(s,10,6);
            else
                s = s;
            end
            
          case 11
            if strcmp(cc,'uparrow')
                s = swapmat(s,11,12);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,11,15);
            elseif strcmp(cc,'downarrow');
                s = swapmat(s,11,10);
            elseif strcmp(cc,'rightarrow')
                s = swapmat(s,11,7);
            else
                s = s;
            end
            
          case 12
            if strcmp(cc,'downarrow')
                s = swapmat(s,12,11);
            elseif strcmp(cc,'leftarrow')
                s = swapmat(s,12,16);
            elseif strcmp(cc,'rightarrow');
                s = swapmat(s,12,8);
            else
                s = s;
            end
         
         case 13
            if strcmp(cc,'uparrow')
                s = swapmat(s,13,14);
            elseif strcmp(cc,'rightarrow')
                s = swapmat(s,13,9);
            else
                s = s;
            end
            
         
            
        case 14
            if strcmp(cc,'downarrow')
                s = swapmat(s,14,13);
            elseif strcmp(cc,'uparrow')
                s = swapmat(s,14,15);
            elseif strcmp(cc,'rightarrow');
                s = swapmat(s,14,10);
            else
                s = s;
            end
            
        case 15
            if strcmp(cc,'downarrow')
                s = swapmat(s,15,14);
            elseif strcmp(cc,'uparrow')
                s = swapmat(s,15,16);
            elseif strcmp(cc,'rightarrow');
                s = swapmat(s,15,11);
            else
                s = s;
            end
            
        case 16
            if strcmp(cc,'downarrow')
                s = swapmat(s,16,15);
            elseif strcmp(cc,'rightarrow')
                s = swapmat(s,16,12);
            else
                s = s;
            end       
    end
    for i = 1:16
        ind = s(i);
        part11(i) = part(ind);
    end
    part2 = part11;
    img = cell2mat(part2);
    imshow(img);
    t = toc;
    if t > 360
        s = [1:4;5:8;9:12;13:16];        
        res = 0;
    end
end

partf1 = cell(4,4);
for i = 1:16
    ind = s(i);
    partf1(i) = partf(ind);
end
img = cell2mat(partf1);
imshow(img);
if res == 0
    text(225,450,'TIME OUT','FontSize',20,'Color','y','FontWeight','Bold');
else
    text(225,450,['TOTAL MOVES : ' num2str(move)],'FontSize',20,'Color','y','FontWeight','Bold');
end

