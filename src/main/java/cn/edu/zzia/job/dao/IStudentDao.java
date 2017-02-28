package cn.edu.zzia.job.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.zzia.job.base.IBaseDao;
import cn.edu.zzia.job.domain.Student;

@Repository
public interface IStudentDao extends IBaseDao<Student> {

	Student selectStudentByUserId(@Param("id")Integer id);
}