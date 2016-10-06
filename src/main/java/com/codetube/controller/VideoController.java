package com.codetube.controller;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.codetube.model.tag.Tag;
import com.codetube.model.tag.TagDAO;
import com.codetube.model.videoclip.VideoClip;
import com.codetube.model.videoclip.VideoClipJDBCTemplate;

@Controller
@SessionAttributes("player")
public class VideoController {
	private ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
	@Autowired
	public VideoClipJDBCTemplate videoClipJDBCTemplate = (VideoClipJDBCTemplate) context
			.getBean("VideoClipJDBCTemplate");

	@Autowired
	public TagDAO tagJDBCTemplate = (TagDAO) context.getBean("TagJDBCTemplate");

	@RequestMapping(value = "/player/{video_id}", method = RequestMethod.GET)
	public String products(Model model, @PathVariable("video_id") Integer videoId, HttpServletRequest request) {
		try {
			System.out.println("dafaq");
			if (request.getSession(false) == null) {
				return "index";
			}
			System.out.println("tyk");
			VideoClip clip = videoClipJDBCTemplate.getClip(videoId);
			Set<Tag> tags = videoClipJDBCTemplate.getVideoTags(clip);
			System.out.println(tags);
			for (Tag tag : tags) {
				clip.addTag(tag);
			}
			// clip.addTag(tag);
			System.out.println(clip);
			model.addAttribute("video", clip);
			return "single";
		} catch (Exception e) {
			e.printStackTrace();
			return "index";
		}

	}
}
