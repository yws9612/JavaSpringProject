package co.sol.mapper;

import java.util.List;
import co.sol.main.*;

public interface DataMapper {
	
	public List<EVO> getEList(EVO exercise);
	public void addExercise(EVO exercise);

}
