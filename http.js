const h=require("http");
const p=8080;
const hh="127.0.0.1";
const s = h.createServer((req,res) =>{
	res.statusCode=200;
	res.setHeader( "Content-type","text/plain");
	res.end("js node server");
	console.log("request\n ");
})

s.listen(p,hh,()=>{
	console.log(`server //${hh}:${p}/`);
	console.log("\n\n");
	});
