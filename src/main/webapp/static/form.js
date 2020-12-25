function validForm(){
	let radios = document.getElementsByName('sequence');
	let flag = false;
	
	for(let i = 0; i < radios.length; i++) {
		if(radios[i].checked == true){
			flag = true;
			if(flag == true){
				break;
			}
		}
	}
	
	if(flag == false){
		alert("Please select sequence!!!");
	}
	
	return flag;
}