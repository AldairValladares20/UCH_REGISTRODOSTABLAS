package com.redsocial.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.redsocial.entidad.Turno;
import com.redsocial.entidad.Reparto;
import com.redsocial.servicio.TurnoService;
import com.redsocial.servicio.RepartoService;

@Controller
public class RepartoController {

	@Autowired
	private RepartoService RepartoService;
	
	@Autowired
	private TurnoService TurnoService;
	
	@RequestMapping("/verRegistroReparto")
	public String verRegReparto() {
	return "registraReparto";
	}
	
	//Permite retornar datos en formato json, sirve para llenar el como de Turno
	@ResponseBody
	@RequestMapping("/cargaTurno")
	public List<Turno> cargaComboTurno() {
	return TurnoService.listarTodos();
	}

 //Session permite guardar en memoria objetos
	@RequestMapping("/registroDeReparto")
	public String verRegReparto(Reparto obj, HttpSession session) {
		Reparto objRep =  RepartoService.insertaReparto(obj);
		if(objRep == null) {
			session.setAttribute("MENSAJE", "Registro erróneo");
		}else {
			session.setAttribute("MENSAJE", "Registro exitos");
		}
		return "registraReparto";
	}
}
