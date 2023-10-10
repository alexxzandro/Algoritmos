Algoritmo ISTJorgeBonilla
	Definir NomEstudiante Como Caracter
	Definir Carrera Como Entero
	Definir conFecha Como Numero
	Definir Matricula, Mensualidad Como Entero
	Escribir "* --- Instituto Superior Tecnológico Jorge Bonilla ---*"
	Escribir "SISTEMA DE PAGOS DE MATRICULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante: " Sin Saltar
	Leer NomEstudiante
	Escribir "¿Qué carrera estudia?"
	Escribir "[1] Computación e Informática"
	Escribir "[2] Secretariado Ejecutivo" 
	Escribir "[3] Administración"
	Escribir "Seleccione la opción: " Sin Saltar
	Leer Carrera
	Si (Carrera = 1) Entonces
		Matricula = 300
		Mensualidad = 450
	FinSi
	Si (Carrera = 2) Entonces
		Matricula = 200
		Mensualidad = 350
	FinSi	
	Si (Carrera = 3) Entonces
		Matricula = 250
		Mensualidad = 400
	FinSi	
	Escribir "¿Está en el rango de fecha permitido?" Sin Saltar
	Escribir "(1) = SI (0) = NO" Sin Saltar
	Leer conFecha
	Si (conFecha = 1) Entonces
		Definir concepto Como Entero
		Escribir "El estudiante esta dentro del rango de las fechas permitidas"
		Escribir "¿Qué concepto desea pagar?"
		Escribir "[1] Matricula o mensualidad"
		Escribir "[2] Matricula y mensualidades"
		Escribir "[3] Todo el semestre" 
		Escribir "[4] Toda la carrera"
		Escribir "Seleccione el concepto a pagar: " Sin Saltar
		Leer concepto
		Si (concepto = 1) Entonces
			Definir OpcionMM Como Entero
			Escribir "Elige la opción para pagar: "
			Escribir "[1] Matricula"
			Escribir "[2] Mensualidad"
			Leer OpcionMM
			Si OpcionMM = 1 Entonces
				Escribir "Usted debe pagar: " Matricula
			SiNo
				Escribir "Usted debe pagar: " Mensualidad
			Fin Si
		SiNo
			Escribir "No se puede realizar la operación"
		Fin Si
		Si (concepto = 2) Entonces
			Definir NroMensualidades Como Entero
			Escribir "¿Cuantas mensualidades desea pagar?"
			Leer NroMensualidades
			Si (NroMensualidades >= 2 )  Y (NroMensualidades <= 4 )  Entonces
				Definir NueMatricula, NueMensualidad, MontoPagar Como Real
				NueMatricula = Matricula * 0.05
				NueMensualidad = Mensualidad * 0.10
				MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)*NroMensualidades)
				Escribir "Usted debe pagar: " MontoPagar
			SiNo
				Escribir "88888No se puede realizar la operación"
			Fin Si
		SiNo
			Escribir "No se puede realizar la operacion"
		FinSi
		
		Si (concepto = 3) Entonces
			Definir NueMatricula, NueMensualidad, MontoPagar Como Real
			NueMatricula = Matricula * 0.10
			NueMensualidad = Mensualidad * 0.20
			MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)*5)
			Escribir "Usted debe pagar: " MontoPagar
		Fin Si
		Si (concepto = 4) Entonces
			Definir NueMatricula, NueMensualidad, MontoPagar Como Real
			NueMatricula = Matricula * 0.20
			NueMensualidad = Mensualidad * 0.40
			MontoPagar = ((Matricula-NueMatricula)*6) + ((Mensualidad - NueMensualidad)*30)
			Escribir "Usted debe pagar: " MontoPagar
		FinSi
	SiNo
		Escribir "El estudiante esta fuera del rango de las fechas permitidas"
		Definir multa Como Real
		multa = Mensualidad * 0.01
		Mensualidad = Mensualidad + multa
		Escribir "la nueva mensualidad es: " Mensualidad
	FinSi
FinAlgoritmo
