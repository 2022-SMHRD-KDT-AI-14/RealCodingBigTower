package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	public int insertMember(Member member) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.model.MemberDAO.insert", member);

			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			sqlSession.insert("com.smhrd.model.MemberDAO.insert", member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

	public Member selectMember(Member member) {
		System.out.println(member);
		Member loginMember = null;
		try {
			// 실행
			// insert("실행할 sql 정의")
			loginMember = sqlSession.selectOne("com.smhrd.model.MemberDAO.selectOne", member);
//			System.out.println(loginMember);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return loginMember;
	}

	public int updateMember(Member member) {
		int cnt = 0;
		try {
			cnt = sqlSession.update("com.smhrd.model.MemberDAO.updateMember", member);
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

	public List<Member> selectAllMember() {
		List<Member> list = null;
		try {
			list = sqlSession.selectList("com.smhrd.model.MemberDAO.selectAllMember");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public int deleteMember(String email) {
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.smhrd.model.MemberDAO.deleteMember", email);
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

	public boolean emailCheck(String inputE) {
		boolean checkE = false;

		try {
			checkE = sqlSession.selectOne("com.smhrd.model.MemberDAO.emailCheck", inputE);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return checkE;
	}
}
