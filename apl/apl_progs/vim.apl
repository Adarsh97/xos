decl

integer a,id,c;
string command,file,word;

enddecl

integer main()
{

read(file);
a=Create(file);
if(a==-1) then
print("Error file.");
else
id=Open(file);
if(id==-1) then
print("Can't open");
else
while(1==1) do
read(command);

if(command==":q") then
break;
endif;


if(command==":w") then

while(1==1) do
read(word);
if(word==":s") then
break;
endif;
a=Write(id,word);
if(a==-1) then
print("maximum exceed");
break;
endif;
endwhile;
endif;

if(command==":r") then
c=0;
a=Seek(id,0);
while(c<512) do
a=Read(id,word);
print(word);
c=c+1;
endwhile;
endif;

if(command==":c") then
a=Close(id);
if(a==-1) then
print("Can't close ");
endif;
endif;

if(command==":rm") then
a=Delete(file);
if(a==-1) then
print("Can't delete");
endif;
endif;

read(command);
endwhile;
endif;
endif;
return 0;
}

