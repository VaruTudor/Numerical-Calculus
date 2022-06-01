function [H]=hermitePoly(t,d,v,x)
    % t = node interpolation vector
    % d = f(x) for values in t
    % v = f'(x) for values in t
    % x = the vector of the elements where we want to aproximate

    l=length(t);

    % copy 2 times t in z and d in f
    % initVal:step:endVal
    % initVal:endVal
    z=zeros(1,2*l);  z(1:2:end)=t; z(2:2:end)=t;
    f=zeros(1,2*l);  f(1:2:end)=d; f(2:2:end)=d;

    m=zeros(2*l,2*l); % m = matrix of divided diff table
    %first col takes 2 by 2 identical values
    m(:,1)=f';
    % second col puts values from v but spaced out
    m(1:2:end,2)=v';
    m(2:2:2*l-1,2)=(d(2:l)-d(1:l-1))./(t(2:l)-t(1:l-1));
    for k=3:2*l
        for i=1:2*l-k+1
            % compute values for the remaining columns
            m(i,k)=(m(i+1,k-1)-m(i,k-1))/(z(i+k-1)-z(i));
        end
    end
    
    lx=length(x);   % the Hermite interpolation
    p=ones(lx,1);
    s=m(1,1)*ones(lx,1);   % f(z0) = m(1,1)
    for j=1:lx
      for i=1:2*l-1
        p(j)=p(j)*(x(j)-z(i));
        s(j)=s(j)+p(j)*m(1,i+1);
      end
    end

    H=s';
end