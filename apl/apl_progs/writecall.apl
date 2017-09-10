decl

integer a,b,c;

string w;

enddecl

integer main()
{
a=Delete("a.dat");
print(a);

a=Create("b.dat");
print(a);

a=Open("b.dat");
print(a);

b=Write(a,"how are you?");
print(b);

b=Write(a,"you are awesome");
print(b);

w="hei guys";
b=Write(a,w);
print(b);

b=Seek(a,0);
print(b);

b=Read(a,w);
if(b==0) then
print(w);
else
print("Eroor");
endif;

b=Read(a,w);
if(b==0) then
print(w);
else
print("Eroor");
endif;
b=Read(a,w);
if(b==0) then
print(w);
else
print("Eroor");
endif;

a=Close(a);
print(a);

return 0;
}
