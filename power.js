var n=0;
var nn=1;
var s="power\n ";
for(n=0;n<129;n++){
	s=s+" 2 ** "+(n).toString()+"="+(nn).toString()+"\n";
	nn=nn+nn;
}

console.log(s);
