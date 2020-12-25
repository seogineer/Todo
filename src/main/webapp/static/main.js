function btnClick(el, id, type){
	let item;
	if(type == "TODO"){
		el.setAttribute('onclick', "btnClick(this,'" + id + "','DOING')");
		item = el.parentElement.parentElement;
		let nextTable = document.querySelector('.doing-list');
		let countRow = nextTable.getElementsByTagName('tr').length;
		nextTable.insertBefore(item, nextTable.children[countRow]);
	} else if(type == "DOING"){
		item = el.parentElement.parentElement;
		let nextTable = document.querySelector('.done-list');
		let countRow = nextTable.getElementsByTagName('tr').length;
		nextTable.insertBefore(item, nextTable.children[countRow]);
		el.parentElement.removeChild(el);
	}
	

	var xhr = new XMLHttpRequest();
	xhr.open("GET", "type?id=" + encodeURI(id) +"&type=" + encodeURI(type));
	xhr.setRequestHeader('Content-type','application/json; charset=utf-8');
	xhr.onload = function () {
	    //var users = JSON.parse(xhr.responseText);
	    if (xhr.readyState == 4 && xhr.status == "200") {
	        console.log("success");
	    } else {
	        console.log("fail");
	    }
	}
	xhr.send();
}