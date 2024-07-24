
function logIn(){
	let valid =true;
	let user = document.getElementById("user").value;
	let password=document.getElementById("password").value;
	
	let a=0;
	if(!user.endsWith("@gmail.com")){
		document.getElementById("iuser").innerHTML="Invalid User";
		a=1;
		valid= false
		
	}else{
		document.getElementById("iuser").innerHTML="";
				
	}
	if(a==0){
			if(password.length<8){
			document.getElementById("ipassw").innerHTML="Invalid Password";
			valid= false
			
		}else{
			document.getElementById("ipassw").innerHTML="";
		}
	}
	
	return valid;
}