package co.sol.service;

import java.util.List;

import co.sol.main.EVO;

public interface DataService {
	
	public List<EVO> getEList(EVO exercise);
	public void addExercise(EVO exercise);

}
