package com.controller;


import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * Servlet implementation class GetImage
 */
@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    //
    private static final int IMG_HEIGHT = 100;
    //
    private static final int IMG_WIDTH = 30;
    //
    private static final int CODE_LEN = 4;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        //
        BufferedImage bi = new BufferedImage(IMG_HEIGHT, IMG_WIDTH, BufferedImage.TYPE_INT_RGB);
        //
        Graphics graphics = bi.getGraphics();
        graphics.setColor(new Color(220,220,220)); //
        graphics.fillRect(0, 0, 100, 30); //

        //
        char[] codeChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456".toCharArray();
        String captcha = ""; //
        Random random = new Random();
        for(int i = 0; i < CODE_LEN; i++) { //
            int index = random.nextInt(codeChar.length);
            //
            graphics.setColor(new Color(random.nextInt(150), random.nextInt(200), random.nextInt(255)));
            //
            graphics.drawString(codeChar[index] + "", (i * 20) + 15, 20);
            captcha += codeChar[index];
        }
        //
        req.getSession().setAttribute("code", captcha);

        //
        ImageIO.write(bi, "JPG", resp.getOutputStream());
    }

}
