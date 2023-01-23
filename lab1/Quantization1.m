function [yq, eq, SQNR] = Quantization1(y, xmin, xmax, m)

    delta = (xmax - xmin)/(2.^m);%delta from equition
    for n=1 : length(y)
       i = round((y(n) - xmin)./delta);
       yq(n)= xmin + i.*delta;
       eq(n) = y(n) - yq(n);
    end
    SQNR = 10*log10(var(y)/ var(eq));

    