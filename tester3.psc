Algoritmo sin_titulo
	//definir/iniciar  variables
	Definir trab Como Entero;
	Definir respuesta, respuesta2 Como Caracter;
	Definir sueldo Como Entero;
	Definir sueldo_reajustado Como Entero;
	Definir anos_servicio Como Entero;
	definir gasto_total Como Entero;
	Definir total_trabajadores Como Entero;
	Definir contador_trab, acum_sueldo_reajustado1, acum_sueldo_reajustado2, acum_sueldo_reajustado3 Como Entero;
	contador_trab = 0;
	acum_sueldo_reajustado1 <- 0;
	acum_sueldo_reajustado2 = 0;
	acum_sueldo_reajustado3 = 0;
	// menu tester prueba 
	Escribir "*************************************************";
	Escribir "*                                               *";
	Escribir "*                                               *";
	Escribir "*              ajustes de sueldo                *";
	Escribir "*                                               *";
	Escribir "*       pulse caulquier tecla para avanzar      *";
	Escribir "*                                               *";
	Escribir "*                                               *";
	Escribir "*************************************************";
	Esperar Tecla;
	Limpiar Pantalla;
	
	
	
	// testeo para ejercicios
	
		Escribir "¿desea agregar un trabajador para reajuste de sueldo? [SI/NO]";
		leer respuesta;
		si respuesta == "si" Entonces
		
			Repetir
				Escribir "ingrese sueldo del trabajador";
				leer sueldo; 
				escribir "ingrese años de servicio del trabajador";
				leer anos_servicio;
				Repetir
					si anos_servicio >65 Entonces
						Escribir "anos de servicio erroneo, reingrese anos de servicio valido (menos de 65 anos)";
						leer anos_servicio;
					FinSi
				Hasta Que  anos_servicio <=65;
				si anos_servicio <5 Entonces
					Escribir "No resive reajuste de sueldo";
				FinSi
				si anos_servicio >=5 y anos_servicio <=10 Entonces
					sueldo_reajustado = sueldo * 1.15;
					Escribir sueldo_reajustado;
					acum_sueldo_reajustado1 = acum_sueldo_reajustado1 + 1;
				FinSi
				si anos_servicio >=11 y anos_servicio <=20 Entonces
					sueldo_reajustado = sueldo * 1.20;
					Escribir sueldo_reajustado;
					acum_sueldo_reajustado2 = acum_sueldo_reajustado2 + 1;
				FinSi
				si anos_servicio >=25 Entonces
					sueldo_reajustado = sueldo * 1.25;
					Escribir sueldo_reajustado;
					acum_sueldo_reajustado3 = acum_sueldo_reajustado3 + 1; 
				FinSi
				Escribir "¿Desea ingresar otro trabajador? [SI/NO]";
				leer respuesta2;
				si anos_servicio >5 Entonces
					contador_trab = contador_trab + 1;
				FinSi
			Hasta Que respuesta2 == "no"
				Escribir "se reajusto el sueldo de ",contador_trab, " trabajadores";
		FinSi
	
FinAlgoritmo