x = [0, 1, 3, 5, 6];
y = [5, 3, 3, 2, 1];
n = length(x);

M = [sum(x.^2), sum(x); sum(x), n];
z = [sum(y.*x);sum(y)];

koeficienty = M\z;
a = koeficienty(1);
b = koeficienty(2);

scatter(x,y,50,'filled','black');
hold on;
plot(x,a*x+b,'linewidth',2, 'color','r')
legend('Zadane body','f(x)=ax+b')

xlabel('x');
ylabel('y');

f     = fittype('a*x+b','dependent','y','independent','x',...
        'coefficients',{'a','b'});
myfit = fit(x',y',f)


