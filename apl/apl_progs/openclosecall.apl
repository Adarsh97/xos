decl


integer status,p,c,d,e,f;

enddecl


integer main()
{

d=Open("myfile.dat");
print(d);

c=Create("adars.dat");
print(c);


e=Open("adars.dat");
print(e);



p=Delete("adars.dat");
print(p);

d=Close(0);
print(d);

p=Delete("adars.dat");
print(p);

c=Close(0);
print(c);

c=Close(7);
print(c);

return 0;
}
