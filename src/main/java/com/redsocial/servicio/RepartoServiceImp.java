package com.redsocial.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.redsocial.entidad.Reparto;
import com.redsocial.repositorio.RepartoRepositorio;

@Service
public class RepartoServiceImp implements RepartoService{

	@Autowired
	private RepartoRepositorio repositorio;

	@Override
	public Reparto insertaReparto(Reparto obj) {
		return repositorio.save(obj);
	}
}
