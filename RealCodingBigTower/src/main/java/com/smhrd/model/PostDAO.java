package com.smhrd.model;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class PostDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int insertPost(Post vo) {

		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.model.PostDAO.insertPost", vo);
			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;

	}
	public List<Integer> selectAllLikePost(BigDecimal like){
		
		List<Integer> list = null;
		try {
			list = sqlSession.selectList("com.smhrd.model.PostDAO.selectAllLikePost", like);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;				
	}

	
public List<Post> selectAllPostlist(){
		
		List<Post> list = null;
		try {
			list = sqlSession.selectList("com.smhrd.model.PostDAO.selectAllPostlist");
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;				
	}

public Post selectOne(int num) {
	
	Post PostVO = null;
	
	try {
		PostVO = sqlSession.selectOne("com.smhrd.model.PostDAO.selectOne", num);
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}finally {
		sqlSession.close();
	}
	return PostVO;
	
}

}
