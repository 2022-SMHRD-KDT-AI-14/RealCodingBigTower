package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class bookmarkDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int insertBookMark(bookmark vo) {
		
		int result = 0;
			
		try {
			
			sqlSession.insert("com.smhrd.model.bookmarkDAO", vo);
			
			if(result>0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
		
	}
	

}
