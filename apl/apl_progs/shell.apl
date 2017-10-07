decl 
string command;
integer pid,a;

enddecl

integer main()
{

print("Enter command:");
print("@adarsh-XOS>");

read(command);

while(command!="exit") do

pid=Fork();

if(pid >=0) then
a=Wait(pid);

endif;

if(pid==-1) then
print("FORK_ERR");
endif;

if(pid==-2) then
a=Exec(command);

if(a==-1) then
print("Error");
break;
endif;
endif;


print(">@adarsh-XOS");
read(command);
endwhile;

print("Exit.");
return 0;
}



