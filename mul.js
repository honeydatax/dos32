var n=0;
var nn=1;
var s="mul\n ";
for(n=0;n<15;n++){
	nn=9*n
	s=s+" 9 * "+(n).toString()+"="+(nn).toString()+"\n";
	nn=nn+nn;
}

console.log(s);
    