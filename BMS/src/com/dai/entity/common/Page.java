package com.dai.entity.common;

import java.io.Serializable;
import java.util.List;

/**
 * 分页模型
 *
 * @param <T> 泛型
 */
public class Page<T> implements Serializable {

	private static final long serialVersionUID = -6217583793698734666L;

	private int page; // 当前页数
	private int size; // 每页数量
	private long totalElement; // 总数据量
	private int totalPage; // 总页数 (totalElement-1)/size +1
	private List<T> items; // 查询的分页信息集合

	public Page() {
	}

	public Page(int page, int size) {
		this.page = page;
		this.size = size;
	}

	public int getpage() {
		return page;
	}

	public void setpage(int page) {
		this.page = page;
	}

	public int getSize() {
		return size;
	}

	public void setPageSize(int size) {
		this.size = size;
	}

	public long getTotalElements() {
		return totalElement;
	}

	public void setTotalElements(long totalElements) {
		this.totalElement = totalElements;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(long totalEment) {
		this.totalPage = (int) (((totalElement - 1)) / size) + 1;
	}

	public List<T> getItems() {
		return items;
	}

	public void setItems(List<T> items) {
		this.items = items;
	}
}
