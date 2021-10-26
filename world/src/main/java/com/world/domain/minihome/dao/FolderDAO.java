package com.world.domain.minihome.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.minihome.vo.FolderVO;

@Repository
public class FolderDAO {

	@Inject
	SqlSession sqlSession;

	public List<FolderVO> getFolderList() {
		System.out.println("=== FolderDAO  getFolderList()  ");
		List<FolderVO> Folder = sqlSession.selectList("FolderDAO.getFolderList");
		System.out.println(Folder.size());
		return Folder;
	}

	/*
	 * public FolderVO getFolder() {
	 * System.out.println("=== FolderDAO  getFolder()  "); return
	 * sqlSession.selectOne("FolderDAO.getFolderList"); }
	 */

	public void insertFolder(FolderVO vo) {
		System.out.println("===FolderDAO  insertFolder()  ");
		sqlSession.update("FolderDAO.insertFolder", vo);
	}

	public void updateFolder(FolderVO vo) {
		System.out.println("===FolderDAO  updateFolder()  ");
		sqlSession.update("FolderDAO.updateFolder", vo);
	}

	public void deleteFolder(FolderVO vo) {
		System.out.println("===FolderDAO  deleteFolder()  ");
		sqlSession.update("FolderDAO.deleteFolder", vo);
	}

}
