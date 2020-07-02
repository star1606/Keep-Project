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
public class Reminder {

	private int id;
	private int personId;
	private String content;	
	private int priority;			
	private Timestamp createDate;
}
