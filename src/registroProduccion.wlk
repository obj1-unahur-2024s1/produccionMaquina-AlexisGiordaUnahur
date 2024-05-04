object registroProduccion {
	var piezasProducidas = []
	method piezasProducidas() = piezasProducidas
	method piezasProducidas(lista){piezasProducidas = lista}
	
	method algunDiaSeProdujo(cantidad)=piezasProducidas.any({p=>p == cantidad})
	method maximoValorDeProduccion()=piezasProducidas.max()
	method valoresDeProduccionPares()=piezasProducidas.filter({p=>p.even()})
	method produccionEsAcotada(n1,n2)=piezasProducidas.all({p=>p.between(n1,n2)})
	method produccionesSuperioresA(valor)=piezasProducidas.filter({p=>p > valor})
	method produccionesSumando(valor)=piezasProducidas.map({p=>p + valor})
	method totalProducido()=piezasProducidas.sum()
	method ultimoValorDeProduccion()=piezasProducidas.last()
	method cantidadProduccionesMayorALaPrimera()=
		piezasProducidas.count({p=>p > piezasProducidas.first()})
}
