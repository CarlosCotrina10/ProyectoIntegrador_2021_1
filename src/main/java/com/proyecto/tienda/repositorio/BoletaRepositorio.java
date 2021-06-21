package com.proyecto.tienda.repositorio;



import org.springframework.data.jpa.repository.JpaRepository;


import com.proyecto.tienda.entidad.Boleta;


public interface BoletaRepositorio extends JpaRepository<Boleta, Integer>{
	/*
	@Query(nativeQuery = true, value = "SELECT * FROM tb_boleta b ORDER BY b.numBoleta DESC LIMIT 1;")
	public abstract List<Boleta> numBolUltimo();
	*/
	/*
	public abstract List<Boleta> findAllOrderByNumBoletaDesc();
	*/
	//List<SLSNotification> findByUserIdOrderBySNumber(@Param("userId") String userId, Pageable pageable);
	/*
	@Query("Select b from Boleta b order by b.numBoleta")
	public abstract List<Boleta> listaBoleta();
	*/
}
