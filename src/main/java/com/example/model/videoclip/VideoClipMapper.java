package com.example.model.videoclip;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.example.model.project.ProjectException;
import com.example.model.tag.TagException;
import com.example.model.user.User;

public class VideoClipMapper implements RowMapper<VideoClip> {

	public VideoClip mapRow(ResultSet rs, int rowNum) throws SQLException {

		VideoClip videoClip = null;
		try {
			videoClip = new VideoClip(rs.getInt("video_clip_id"), rs.getString("name"), rs.getString("performer"),
					rs.getString("path"));
			videoClip.setViewCount(rs.getInt("view_count"));
		} catch (VideoClipException e) {
			e.printStackTrace();
		}
		return videoClip;
	}
}
