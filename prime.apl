
decl 

integer printprime(integer n);

enddecl


integer printprime(integer n)
{

integer i,j,d;
i=2;
while (i<=n) do
  j=2;
  d=0;
      while (j*j <=i) do
           if (i%j==0) then
              d=1;
              break;
             endif;
           j=j+1;
       endwhile;
 if (d==0) then
  print (i);
  endif;
i= i+1;
endwhile;

return 0;
}

integer main()
{
breakpoint;
integer i,m;
print("enter the N:");
read(m);
i=printprime(m);
return 0;
}
  
        
