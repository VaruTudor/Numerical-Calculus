a=[1,2,13;4,5,6;7,8,9];
b=[4,8,12;-1,0,5;2,3,8];
[m,n]=size(a);
t=b';
c=a*b;
d=a.*b;
e=a.^2;
size(a);
length(a);
m=mean(a);
m1=mean(a,2);
g=geomean(a);
s=sum(a);
s1=sum(a,2);
p=prod(a);
p1=prod(a,2);
max(a);
min(a);
diag(a);
m>2;
a>b;
inv(b);
det(b);
f=abs(b);
b=[16 15 24]';
x=a\b;          %solution of ax=b
triu(a);        %fill bellow main diag /w 0s
tril(a);        %fill above main diag /w 0s
m=[2 3 5; 7 11 13; 17 19 23];
m(2,1);
m(:,1);         %all rows of column 1
m(2,:);         %all columns of line 2
m(2,1 : 2);     %line 2, all but last column
m(2,2 : end);   %second row, all but rst column
m(2 : 3,2 : 3); %a submatrix

eye(8);         %identity
eye(5,7);       %last 2 colums are 0s
zeros(5,7);     %only 0s
ones(7,8);      %only 1s

M=magic(4);
sum(M);
sum(M,2);
sum(diag(M));
sum(diag(flip(M)));