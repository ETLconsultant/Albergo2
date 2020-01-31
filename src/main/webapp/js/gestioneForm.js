function SoleLettere(){
	return(event.charCode>64 && event.charCode<91)|| (event.charCode>96 && event.charCode<123)
}


function validateFormReg() {
	var nome = document.forms["FormReg"]["nome"].value;
	var username = document.forms["FormReg"]["username"].value;
	var password= document.forms["FormReg"]["password"].value;
	var regexP =/^(?=.*\d)(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[.!@#$%^&*]).{8,}$/;
	var messaggio=null;
	
	if(nome==""){
		messaggio="Nome obbligatorio."
		document.getElementById('anagrafici').innerHTML=messaggio
			return false;
	}
	document.getElementById('anagrafici').innerHTML=messaggio
	
	if(username==""){
		messaggio="Username obbligatorio."
		document.getElementById('username').innerHTML=messaggio
			return false;
		}
	else if(username.length<4||username.length>30){
		messaggio="Username tra 4 e 30 caratteri."
		document.getElementById('username').innerHTML=messaggio
			return false;
		}
	document.getElementById('username').innerHTML=messaggio
	
	 if(password==""){
		messaggio="Password obbligatoria. "
		document.getElementById('password').innerHTML=messaggio
			return false;
		}
	else if(!password.match(regexP)){
		messaggio="Password errata.Almeno 8 caratteri di cui almeno 1 numero 1 minuscolo 1 maiuscolo e 1 speciale "
		document.getElementById('password').innerHTML=messaggio
			return false;
		}
	document.getElementById('password').innerHTML=messaggio
	
}

function validateLogin(){
	var username = document.forms["FormLogin"]["username"].value;
	var password= document.forms["FormLogin"]["password"].value;
	var messaggio=null;
	
	if(username==""){
		messaggio="Username obbligatorio."
			document.getElementById('username').innerHTML=messaggio
			return false;
		}
	
	else if(username.length<4||username.length>16){
		messaggio="Username tra 4 e 30 caratteri."
		document.getElementById('username').innerHTML=messaggio
			return false;
		}
	document.getElementById('username').innerHTML=messaggio
	
	 if(password==""){
		 
		messaggio="Password obbligatoria. "
		document.getElementById('password').innerHTML=messaggio
			return false;
		}
	document.getElementById('password').innerHTML=messaggio
	}

