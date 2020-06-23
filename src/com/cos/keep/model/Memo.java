package com.cos.keep.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Memo {

	private int id;
	private int personId;
	private String title;
	private String content;	
	private int priority;		
	private String userProfile;
	private Timestamp createDate;
}
