package dao;

import entities.Comment;

public interface CommentDao {

	public void create(Comment entity);
 	public void update(Comment entity);
	public void delete(Comment entity);
	public Comment getCommentById(long id);


}
