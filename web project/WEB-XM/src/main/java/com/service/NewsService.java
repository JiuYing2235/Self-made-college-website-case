package com.service;

import java.util.List;

import com.entity.News;

public interface NewsService {
    /**
     * 查询全部用户
     * @return
     */
    public List<News> listNewss();
    /**
     * 添加用户
     * @param name
     */
    public void addNews(String name);
    /**
     * 基于ID获取指定用户
     * @param id
     * @return
     */
    public News getNews(int id);

    public void deleteNews(String name);
}
