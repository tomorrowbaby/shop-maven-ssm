package com.ssm.utils;

public class BaseBean {
			//起始记录数
			private int start ;
			//每次查询的条数
			private int rows ;
			
			public int getStart() {
				return start;
			}
			public void setStart(int start) {
				this.start = start;
			}
			
			public int getLength() {
				return rows;
			}
			public void setLength(int rows) {
				this.rows = rows;
			}
}
