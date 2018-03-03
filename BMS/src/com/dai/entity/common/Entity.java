package com.dai.entity.common;

import java.io.Serializable;


/**
 * 表对应的实体类的基数。规定了一个Long 类型的 id 属性，用于表示表中的主键。
 * @author 
 */
public abstract class Entity implements Serializable {

	private static final long serialVersionUID = 6427665288199310581L;
	
	private Long id;

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param temp the id to set
	 */
	public void setId(Long temp) {
		this.id = temp;
	}
	
	
}
