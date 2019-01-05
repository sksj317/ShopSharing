package service;

import java.util.List;  

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.Acat;
import model.Bcat;
import model.Ccat;
import model.Comment;
import model.Member;
import repository.CommentSessionRepository;

@Service
public class CommentService {

	@Autowired
	private CommentSessionRepository commentRepository;
	/*		
	public Integer insertComment(Comment comment) {
		System.out.println("service "+comment.getCommentContent());
		System.out.println("service "+comment.getUserId());
		return commentRepository.insertComment(comment);
	}
	
	public List<Comment> selectCommentByCondition(Comment comment){
		System.out.println("service "+comment.getCommentNo());
		return commentRepository.selectCommentByCondition(comment);
	}
	
	public Integer updateComment(Comment comment) {
		System.out.println("service "+comment.getCommentNo());
		return commentRepository.updateComment(comment);
	}
	
	public Integer deleteComment(Comment comment) {
		System.out.println("service "+comment.getCommentNo());
		return commentRepository.deleteComment(comment.getCommentNo());
	}
	
	public void ajaxSelect(HttpServletRequest request, Model model) {
		Long result = Long.parseLong(request.getParameter("n"));
		System.out.println("service "+result);
		List list = commentRepository.ajaxSelect(result);
		model.addAttribute("list", list);
		model.addAttribute("result", result);
	}*/
/*	
	public void memberSelect(Member member, Model model) {
		System.out.println("service "+member.getMemberId());
		Member mb = commentRepository.memberSelect(member);
		int result = 0;
		if(mb != null) {
			if(!mb.getMemberPwd().equals(member.getMemberPwd())) {
				result = 2;
			}else {
				result = 3;
			}
		}else {
			result = 1;
		}
		System.out.println("result "+result);
		model.addAttribute("num", result);
		
	}
	*/
	/*public void dominoSelectA(Model model) {
		List<Acat> list = commentRepository.acatSelect();
		model.addAttribute("list", list);
	}
	
	public void dominoSelectB(Acat acat, Model model) {
		System.out.println("service:dominoSelectB "+acat.getAnum());
		List<Bcat> list = commentRepository.bcatSelect(acat);
		model.addAttribute("list", list);
	}
	
	public void dominoSelectC(Bcat bcat, Model model) {
		System.out.println("service:dominoSelectC "+bcat.getBnum());
		List<Ccat> list = commentRepository.ccatSelect(bcat);
		model.addAttribute("list", list);
	}
*/
}
