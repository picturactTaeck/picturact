package com.project.picturact.member.utils;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {
//	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	public static String uploadFile(String saveDir, String originalFilename,byte[] fileData) throws Exception{
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalFilename;
		File target = new File(saveDir, savedName);
		FileCopyUtils.copy(fileData, target);
		
		//for saved name in database
		String saveFile = saveDir+"/profile/"+savedName;
		
//		makeProfileSize(saveDir, savedName);
		
		return saveFile;
	}
	
	//Changed profile size
	public static void makeProfileSize(String saveDir, String fileName) throws Exception{
		BufferedImage sourceImg = ImageIO.read(new File(saveDir, fileName));
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT,150);
		
		String savedFile = saveDir + fileName;
		
		File profileFile = new File(savedFile);
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		
		ImageIO.write(destImg, formatName.toUpperCase(), profileFile);
		
		return;
	}
	
}