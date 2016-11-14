var total = 0;
			
var conc = 0;

function soma(campo) 
{
	if (campo.checked)
	    total += eval(campo.value);
	
	else 
		total -= eval(campo.value);
	
	conc = (total * 100)/3240;
	
	document.sistema.total.value = conc;
}

	//3240 --- 100 %
	//total --- x  %