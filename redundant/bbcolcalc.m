function [ bbcf ] = bbcolcalc(imb,bbc)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
i1=bbc(1);
i2=bbc(3);
m=bbc(2);
n=bbc(4);
rect=[];
cnt=0;
for k=i1:m
for j=i2:n
    if( (imb(k,j,3)>200) && (imb(k,j,2)>200) && (imb(k,j,1)<100) ) 
        rect= [rect,k];
        cnt=1;
        break;
    end
    if(cnt==1)
        break;
    end
end
end

cnt=0;
for k=i2:n
for j=i1:m
  if( (imb(j,k,3)>200) && (imb(j,k,2)>200) && (imb(j,k,1)<100) ) 
        rect= [rect,k];
        cnt=1;
        break;
  end
    if(cnt==1)
        break;
    end
end
end

cnt=0;
for k=m:-1:i1
for j=n:-1:i2
   if( (imb(k,j,3)>200) && (imb(k,j,2)>200) && (imb(k,j,1)<100) ) 
        rect= [rect,k];
        cnt=1;
        break;
   end
    if(cnt==1)
        break;
    end
end
end

cnt=0;
for k=n:-1:i2
for j=m:-1:i1
   if( (imb(j,k,3)>200) && (imb(j,k,2)>200) && (imb(j,k,1)<100) ) 
        rect= [rect,k];
        cnt=1;
        break;
   end
    if(cnt==1)
        break;
    end
end
end
bbc=rect;
bbcf= [bbc(1),bbc(3),bbc(2),bbc(4)];

end