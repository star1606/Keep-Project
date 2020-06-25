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
public class Person {

	private int id;
	private String email;
	private String personName;
	private String password;
	private String userProfile;
	private Timestamp createDate;
	
}
