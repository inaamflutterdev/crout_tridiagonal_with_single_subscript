format long
a=[2 2 4 2 2];
n=length (a);
c=[1 2 0 1];
d=[-1 -1 -1 -1];
b= [1 2 -1 -2 -1];
l= zeros (n,1);
y=zeros (n,1);
x=zeros (n, 1);
l (1) = a (1);
for i=2:n
l (i) = a (i) -c (i-1)*d (i-1)/l (i-1);
end
l
y (1)= b (1)/ l (1);
for i=2:n 
y (i) = (b (i) -c (i-1)*y (i-1))/l(i);
end
y
x (n) =y (n);
for i=n-1 : -1 : 1
x(i) = y(i) -d (i) * x (i+1)/l (i);
end
x
