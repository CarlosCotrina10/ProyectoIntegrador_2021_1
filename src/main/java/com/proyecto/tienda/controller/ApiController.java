package com.proyecto.tienda.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.proyecto.tienda.entidad.Boleta;
import com.proyecto.tienda.entidad.MensajeJSON;
import com.proyecto.tienda.servicio.ApiServicio;

@RestController
@RequestMapping("/rest/boleta")
public class ApiController {
	
	@Autowired
	private ApiServicio servicio;
/*
	@PutMapping
	public ResponseEntity<Boleta> actualiza(@RequestBody BoletaJSON bol) {

		System.out.println("API REST >>>>> " + bol.getNumBoleta());
		Optional<Boleta> optBoleta = servicio.obtienePorNum(bol.getNumBoleta());
		
		if (optBoleta.isPresent()) {
			Boleta boleta = optBoleta.get();
			boleta.setEstado(0);
			boleta = servicio.insertaActualiza(boleta);
			if (boleta != null) {
				return ResponseEntity.ok(boleta);
			} else {
				System.out.println("error");
				return ResponseEntity.badRequest().build();	
			}
		} else {
			System.out.println("no hay");
			return ResponseEntity.badRequest().build();
		}

	}
	*/
	
	@PostMapping
	public ResponseEntity<MensajeJSON> actualiza(@RequestBody MensajeJSON bol) {

		System.out.println("API REST >>>>> " + bol.getInfo());
		MensajeJSON mensajeRetorno = new MensajeJSON();
		//int num = Integer.parseInt(bol.getInfo().substring(1, 4));
		System.out.println(bol.getInfo().substring(1,5));
		System.out.println(bol.getInfo().substring(1,5).replaceAll("0", ""));
		int num = Integer.parseInt(bol.getInfo().substring(1,5).replaceAll("0", ""));
		Optional<Boleta> optBoleta = servicio.obtienePorNum(num);
		
		if (optBoleta.isPresent()) {
			Boleta boleta = optBoleta.get();
			
			if (boleta.getEstado() == 0) {
				mensajeRetorno.setInfo("La compra con el c??digo " + bol.getInfo() + " ya hab??a sido cancelada.");
				return ResponseEntity.ok(mensajeRetorno);
			}
			
			boleta.setEstado(0);
			boleta = servicio.insertaActualiza(boleta);
			if (boleta != null) {
				mensajeRetorno.setInfo("La compra con el c??digo " + bol.getInfo() + " fue cancelada exitosamente.");
				return ResponseEntity.ok(mensajeRetorno);
			} else {
				System.out.println("error");
				mensajeRetorno.setInfo("La compra con el c??digo " + bol.getInfo() + " no se pudo cancelar, contactar a soporte.");
				return ResponseEntity.ok(mensajeRetorno);
			}
		} else {
			mensajeRetorno.setInfo("No existe una compra con el c??digo " + bol.getInfo() + ".");
			return ResponseEntity.ok(mensajeRetorno);
		}

	}

	/*
	@PutMapping
	public ResponseEntity<String> actualiza(@RequestBody BoletaJSON bol) {

		System.out.println("API REST >>>>> " + bol.getNumBoleta());
		Optional<Boleta> optBoleta = servicio.obtienePorNum(bol.getNumBoleta());
		
		if (optBoleta.isPresent()) {
			Boleta boleta = optBoleta.get();
			boleta.setEstado(0);
			boleta = servicio.insertaActualiza(boleta);
			if (boleta != null) {
				return ResponseEntity.ok("Se pudo realizar la cancelaci??n.");
			} else {
				System.out.println("error");
				return ResponseEntity.ok("No se pudo realizar la cancelaci??n.");	
			}
		} else {
			System.out.println("no hay");
			return ResponseEntity.ok("No se encontr?? ninguna compra con ese c??digo.");
		}

	}
	*/
	
	

}
