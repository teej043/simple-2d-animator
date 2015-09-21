var ds,childNum,node,str;
ds = argument0;
node = noone;
childNum = ds_list_size(ds);
if (!ds_list_empty(ds)) exit;
str = "";
for(p=0; p<=childNum-1; p++){
    node = ds[| p];
    str += string(node) + "\n";
}   

return str;
