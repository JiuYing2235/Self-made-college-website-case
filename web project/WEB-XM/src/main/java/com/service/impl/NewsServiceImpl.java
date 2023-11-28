package com.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import com.entity.News;
import com.service.NewsService;
import com.util.DataSourceUtils;

public class NewsServiceImpl implements NewsService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());
    @Override
    public void addNews(String newName) {
        String sql = "INSERT INTO news(name) VALUES(?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, newName);
            st.executeUpdate();
        }catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }

    @Override
    public List<News> listNewss() {
        List<News> newss = new ArrayList<>();
        String sql = "SELECT * FROM news ORDER BY inserttime DESC ";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news = new News(rs.getInt("id"), rs.getString("name"), rs.getTimestamp("inserttime"), rs.getString("content"));
                newss.add(news);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return newss;
    }

    @Override
    public News getNews(int id) {
        News news = null;
        String sql = "SELECT * FROM news WHERE id=? ORDER BY inserttime DESC ";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            try(ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news = new News(rs.getInt("id"), rs.getString("name"), rs.getTimestamp("inserttime"), rs.getString("content"));
                }
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return news;
    }

    @Override
    public void deleteNews(String name) {
        String sql = "DELETE FROM news WHERE name=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, name);
            st.executeUpdate();
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }
}
