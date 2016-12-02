var total = 0;
			
var conc = 0;

function soma(campo) 
{
	if (campo.checked)
	    total += eval(campo.value);
	
	else 
		total -= eval(campo.value);
	
	conc = (total * 100)/2850;
	
	document.getElementById('result').value = conc;
}

	//2850 --- 100 %
	//total --- x  %
;
