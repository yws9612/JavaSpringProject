package co.sol.service;

import java.util.List;

import co.sol.main.EVO;

public interface DataService {
	
	List<EVO> getEList(EVO exercise);
	void addExercise(EVO exercise);
	List<EVO> randomList();

}
