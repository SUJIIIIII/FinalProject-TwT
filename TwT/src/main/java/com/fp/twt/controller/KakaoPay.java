package com.fp.twt.controller;

import java.net.URI;
import java.net.URISyntaxException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.fp.twt.vo.HotelReservation;
import com.fp.twt.vo.KakaoPayApprovalVO;
import com.fp.twt.vo.KakaoPayReadyVO;

//카카오 결제

@Service
public class KakaoPay {
 
	 private static final String HOST = "https://kapi.kakao.com";
	 private static final Logger logger = LoggerFactory.getLogger(KakaoPay.class);
	    
	    private KakaoPayReadyVO kakaoPayReadyVO;
	    private KakaoPayApprovalVO kakaoPayApprovalVO;
	    
	    //결제전
	    public String kakaoPayReady(HotelReservation vo) {
	    	System.out.println("가격알어란어란"+vo);
	        RestTemplate restTemplate = new RestTemplate();
	 
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();	        
	        headers.add("Authorization", "KakaoAK " + "f6f148fda809d24eca6b11be43363d60");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	        

	        String[] pri = vo.getReservation_price().split(",");
	    	
	    	String price = pri[0]+pri[1];
	    	System.out.println(price);
	        


	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("partner_order_id", "1001");//아이템값
	        params.add("partner_user_id", "gorany");
	        params.add("item_name", vo.getReservation_hotelname()+"("+vo.getReservation_hotelroom()+")");//결제될 아이템이름
	        params.add("quantity", "1");//결제될 아이템 개수
	        params.add("total_amount", price);//결제금액
	        params.add("tax_free_amount", "100");//세금면제 퍼센트
	        params.add("approval_url", "http://localhost:8787/twt/kakaoPaySuccess.do?hotelname="+vo.getReservation_hotelname()+"&price="+price);//승인
	        params.add("cancel_url", "http://localhost:8787/twt/hotel.do");//취소
	        params.add("fail_url", "http://localhost:8787/twt/hotel.do");//실패
	         HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	 
	        try {
	            kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
	            
	            logger.info("" + kakaoPayReadyVO);
	            
	            return kakaoPayReadyVO.getNext_redirect_pc_url();
	            
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return "/pay";
	        
	    }
	    
	  //결제후
	    public KakaoPayApprovalVO kakaoPayInfo( String pg_token) {
	 
	    	logger.info("KakaoPayInfoVO............................................");
	    	logger.info("-----------------------------");
	        
	        RestTemplate restTemplate = new RestTemplate();
	 
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "f6f148fda809d24eca6b11be43363d60");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	 
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("tid", kakaoPayReadyVO.getTid());
	        params.add("partner_order_id", "1001");//아이템값
	        params.add("partner_user_id", "gorany");
	        params.add("pg_token", pg_token);
	        params.add("total_amount", "1000");
	        
	        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	        
	        try {
	            kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
	            logger.info("" + kakaoPayApprovalVO);//여기 문제있음 
	          
	            return kakaoPayApprovalVO;
	        
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return null;
	    }
	    
	}
