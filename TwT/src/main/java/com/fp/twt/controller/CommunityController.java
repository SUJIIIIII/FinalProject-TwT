package com.fp.twt.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CommunityController {
	//용훈
	
	//포토북 이미지 업로드
	@PostMapping(value="/uploadImageFile.do", produces = "application/json")
	@ResponseBody
	public Map<String, String> uploadImageFile(@RequestParam("file") MultipartFile multipartFile) {
		System.out.println("메서드 실행");
		
		
		
		
		
		
		
		
		Map<String, String> map = new HashMap<String, String>();
		
		String fileRoot = "C:/summernote_image/";	//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		System.out.println(originalFileName);
				
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			map.put("url", fileRoot+savedFileName);
			map.put("responseCode", "success");
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			map.put("responseCode", "error");
			e.printStackTrace();
		}
		
		return map;
	}
	
	//----------------------------------------------------------------------------------------------
	
	//도영
	
	
	
	
	

}
