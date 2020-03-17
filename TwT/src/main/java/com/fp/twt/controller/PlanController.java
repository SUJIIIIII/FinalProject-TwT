package com.fp.twt.controller;

import java.io.File;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fp.twt.biz.PlanBiz;
import com.fp.twt.vo.CityVo;
import com.fp.twt.vo.TravelPointVo;
import com.fp.twt.vo.TravelScheduleVo;



// http://localhost:8090/twt/plan.do

@Controller
public class PlanController {
	@Autowired
	public PlanBiz biz;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	//철환
	
	@RequestMapping("/selectCity.do")
	public String selectCity(Model model, HttpServletRequest request) {
		// 도시변경
		System.out.println("selectCity");
		// city 모든 정보
		List<CityVo> allCity = biz.selectCityAll();

		// 해당하는 도시에 대한 Spot 정보
		String citycode = request.getParameter("citycode");
		System.out.println("controller에서 citycode : " + citycode);
		List<TravelPointVo> cityspot = biz.selectCitySpot(citycode);// 도시별 spot 불러오기s

		// 선택된 city 정보
		CityVo cityvo = biz.selectCityOne(citycode);

/*		System.out.println("allspot : " + allSpot);
		System.out.println("위도 : " + allSpot.get(0).gettp_Lati());
		System.out.println("경도 : " + allSpot.get(0).gettp_Long());*/

		model.addAttribute("allCity", allCity);
		model.addAttribute("allSpot", cityspot);
		model.addAttribute("citycode", citycode);
		model.addAttribute("cityvo", cityvo);
		
		return "TwTPlan/plan_spot_box";
	}
	
	
	
	
	
	//-------------------------------------------------------------------------------------------------------------
	
	//수지
	@RequestMapping("/plan.do")
	public String createSelect(Model model) {
		// city 모든 정보
		List<CityVo> res = biz.selectCityAll(); 
		model.addAttribute("res",res);
		return "TwTPlan/plan_create";
	}
	
	@RequestMapping("planDetail.do")
	public String planDetail(Model model, HttpServletRequest request) {
		// Day1 추가해서 만들기
		
		
		// city 모든 정보
		List<CityVo> allCity = biz.selectCityAll();
		
		// spot 모든 정보
		String citycode = request.getParameter("citycode");
		System.out.println("controller에서 citycode : " + citycode);
//		List<TravelPointVo> allSpot = biz.selectAllSpot();
		List<TravelPointVo> cityspot = biz.selectCitySpot(citycode);// 도시별 spot 불러오기s
		
		// 선택된 city 정보
		CityVo cityvo = biz.selectCityOne(citycode);
		
//		System.out.println("allspot : " + cityspot);
		System.out.println("allcity : " + allCity);
		System.out.println("위도 : " + cityspot.get(0).gettp_Lati());
		System.out.println("경도 : " + cityspot.get(0).gettp_Long());
		
		model.addAttribute("allCity",allCity);
		model.addAttribute("allSpot",cityspot);
		model.addAttribute("citycode",citycode);
		model.addAttribute("cityvo",cityvo);
		
		return "TwTPlan/plan_detail";
	}
	
   @RequestMapping(value = "/insertPlan.do", method = RequestMethod.POST)
   @ResponseBody
   public Map<String, String> insertPlan(HttpServletRequest request, HttpSession session,
         @RequestBody Map<String, HashMap<String, Object>> param) throws ParseException {
      
      HashMap<String, Object> day_list = param.get("day_list"); // Day_List를 맵에 넣어줌
      HashMap<String, Object> form_data = param.get("form_data"); // form Data를 맵에 넣어줌
      
      System.out.println("form_data : " + form_data);
      System.out.println("day_list_obj : " + day_list);
      
      UUID uuid = UUID.randomUUID(); // 고유번호 만들어주기
      String user_code = (String) session.getAttribute("userCode"); //유저번호 가져오기
      String file_name = uuid.toString() + "_" + (String) form_data.get("file_name").toString();
      String pn_title = (String)form_data.get("pn_title");
      String pn_day = (String) form_data.get("pn_day").toString();
      int pn_person = Integer.parseInt((String) form_data.get("pn_person").toString());
      String pn_desc = (String) form_data.get("pn_desc").toString();
      String pn_type = (String) form_data.get("pn_type").toString();
      int pn_period = day_list.size(); 
      
      TravelScheduleVo ts_vo = new TravelScheduleVo(); // vo에 정보 담아주기
      ts_vo.setm_Code(user_code);
      ts_vo.setts_Thum(file_name);
      ts_vo.setts_Title(pn_title);
      ts_vo.setts_People(pn_person);
      ts_vo.setts_Theme(pn_type);
      ts_vo.setts_Period(pn_period);
      ts_vo.setts_Sday(pn_day);
        
      int res = biz.insertSchedule(ts_vo);
      
      if(res == 0) {
         System.out.println("insert가 실패하였습니다.");
      } 
      
      String ts_code = "TS11" + ts_vo.getre_Code(); // TS_CODE 담아주기

      
      for (int i = 1; i < day_list.size(); i++) {
         Object select_day = day_list.get("day"+i);
         String select_day_str = select_day.toString();
         
         System.out.println("Day"+ i + " toStirng : " + select_day_str);
         
         select_day_str = select_day_str.replaceAll("\\{", "");
         select_day_str = select_day_str.replaceAll("\\}", "");
         
         System.out.println("Day"+ i + " toStirng replace : " + select_day_str);
         
         String[] day_arr =  select_day_str.split(",");
         for (int j = 0; j < day_arr.length; j++) {
            String day_spot_num = day_arr[j].split("=")[1];
            ts_vo.settp_Code(day_spot_num);
            ts_vo.setTs_Day("DAY"+i);
            ts_vo.setts_Code(ts_code);
            
            int res2 = biz.insertScheduleDay(ts_vo); 
            
            if(res2 == 0 ) {
               System.out.println("insert가 실패하였습니다.");
            }
         }
      }

      Map<String, String> map = new HashMap<String, String>();
      map.put("file_name", uuid.toString());

      return map;
   }

	@RequestMapping(value = "/fileUpload.do", method = RequestMethod.POST)
	public String fileUpload(MultipartFile file, HttpServletRequest request) {
		
		// ------- file upload --------
		System.out.println("fileName : " + file.getOriginalFilename());
		String uuid = request.getParameter("file_name");
		String real_name = uuid + "_" + file.getOriginalFilename();
		
		File target = new File(uploadPath, real_name);
		try{
			// 임시 디렉토리에 저장된 파일을 지정된 디렉토리로 복사
			FileCopyUtils.copy(file.getBytes(), target);
			
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:/index.jsp";
	}	

	

}
