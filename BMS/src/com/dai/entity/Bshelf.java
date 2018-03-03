package com.dai.entity;

import com.dai.entity.common.Entity;

/**
 * @author DaiChunShan
 *
 */
public class Bshelf extends Entity {
	private String type;
	private String position;
	public Bshelf() {
		
	}
	public Bshelf(Long id, String type, String position) {
		super.setId(id);
		this.type = type;
		this.position = position;
	}

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}

	@Override
	public String toString() {
		return "BshelfEntity [id=" + getId() + ",type=" + type + ", position=" + position + "]";
	}
	

}
