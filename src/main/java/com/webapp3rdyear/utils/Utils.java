package com.webapp3rdyear.utils;

import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Random;

import com.webapp3rdyear.config.Constant;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;


public class Utils {
	public static String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	public static Random RANDOM = new Random();
	public static String toString(Date d) {
		return formatter.format(d);
	}
	public static String generateRandomString(int length) {
		StringBuilder stringBuilder = new StringBuilder(length);

		for (int i = 0; i < length; i++) {
			int index = RANDOM.nextInt(CHARACTERS.length());
			stringBuilder.append(CHARACTERS.charAt(index));
		}

		return stringBuilder.toString();
	}
	
	private static String getFileName(Part part) {
		return part.getSubmittedFileName();
	}
	
	public static String uploadFileImage(HttpServletRequest request, int type, String id) {
		String direc = type == 1 ? Constant.UPLOAD_DIRECTORY_PRODUCT : Constant.UPLOAD_DIRECTORY_USER;
		String uploadPath = request.getServletContext().getRealPath("") + direc;
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists())
			uploadDir.mkdirs();
		try {
			String fileName = "";
			Part part = request.getPart("image");
			fileName = getFileName(part);
			if (fileName == null || fileName.length() <= 0)
				return null;
//			String sname = fileName.substring(0, fileName.length()-5);
			fileName = id + ".jpeg";
			System.out.println("write " + fileName + "|");
			System.out.println(uploadPath);
			part.write(uploadPath + fileName);
			request.setAttribute("message", "File " + fileName + " has uploaded successfully!");
			return fileName;

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "There was an error: " + e.getMessage());

		}
		return null;
	}
	static SimpleDateFormat formatter = new SimpleDateFormat("ddMMyyyy");
}
