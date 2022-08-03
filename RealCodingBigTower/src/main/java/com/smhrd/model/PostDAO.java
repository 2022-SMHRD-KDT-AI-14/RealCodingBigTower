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
	
	
public List<Post> selectAllLikePostlist(){
		
		List<Post> postlist = null;
		try {
			postlist = sqlSession.selectList("com.smhrd.model.PostDAO.selectAllLikePostlist");
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return postlist;				
	}
public List<Post> selectAllLikePostlist2(){
	
	List<Post> postlist = null;
	try {
		postlist = sqlSession.selectList("com.smhrd.model.PostDAO.selectAllLikePostlist2");
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		sqlSession.close();
	}
	return postlist;				
}

public Post selectPostOne(int num) {
	
	Post PostVO = null;
	
	try {
		PostVO = sqlSession.selectOne("com.smhrd.model.PostDAO.selectPostOne", num);
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}finally {
		sqlSession.close();
	}
	return PostVO;
	
}

}
