package com.green.controller;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.green.dao.ProductDAO;
import com.green.dto.AuctionDto;

@Controller
public class MainController {
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/")
	public String main(Model model, @RequestParam(required = false) String category, @RequestParam(required = false) String filter, @RequestParam(required = false) String sort,
						@RequestParam(required = false) String searchCate, @RequestParam(required = false) String searchText, @RequestParam(required = false) String end,
						@RequestParam(required = false) String pageNum) {
		String category2 = "";
		String filter2 = "";
		String sort2 = "";
		String end2 = "";
		
		if(category != null) {
			category2 = "category="+category+"&";
		}
		if(filter != null) {
			filter2 = "filter="+filter+"&";
		}
		if(sort != null) {
			sort2 = "sort="+sort+"&";
		}
		if(end != null) {
			end2 = "end="+end+"&";
		}
		
		String url2 = category2+filter2+sort2+end2;
		model.addAttribute("url",url2);
		
		int totalCnt = 0;
		int pageNum2 = pageNum == null? 1 : Integer.parseInt(pageNum);
		int startNum = (pageNum2-1)*10+1;
		
		List<AuctionDto> list = null;
		
		totalCnt = productDAO.selectAllNumAuction();
		
		if(category != null) {
			totalCnt = productDAO.selectAllNumAuctionByCategory(category);
		}
		if(end != null && end.equals("1")) {
			end = "<";
		}else if(end != null && end.equals("2")){
			end = ">";
		}
		
		list = productDAO.selectTargetAuctionByPaging(category, filter, sort, startNum, end);
		
		if(searchText != null) {
			list = productDAO.search(searchCate, searchText);
			totalCnt = list.size();
		}
		
		int totalPage = (totalCnt-1)/10+1;                                                                   
		int startPage = ((pageNum2-1)/10)*10+1;                                                               
		int endPage = totalPage <  startPage+9 ? totalPage: startPage+9;                                     
		
		model.addAttribute("category", category);
		model.addAttribute("totalCnt", totalCnt);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("pageNum", pageNum2);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("list", list);
		
		return "productList";
	}
	
	@RequestMapping("/selectOne")
	public String selectOne(@RequestParam int num, Model model) {
		productDAO.readCount(num);
		AuctionDto dto = productDAO.selectOne(num);
		model.addAttribute("list",productDAO.selectAllAuction());
		model.addAttribute("product",dto);
		return "productDetail";  
	}
	

	@RequestMapping("/newAuction")
	public String newAuction() {
		return "newAuction"; 
	}
	
	@PostMapping("/newAuction")
	public String newProduct(@RequestParam String title,@RequestParam int strPrice,
			@RequestParam int dirPrice,@RequestParam int bidUnit,
			@RequestParam String content,@RequestParam String regdate, @RequestParam String category,
		    @RequestParam MultipartFile[] productPic) throws IllegalStateException, IOException {
		AuctionDto dto = new AuctionDto();
		dto.setTitle(title);
		dto.setStrPrice(strPrice);
		dto.setDirPrice(dirPrice);
		dto.setBidUnit(bidUnit);
		dto.setContent(content);
		dto.setRegdate(regdate);
		dto.setCategory(category);
		String str = "";
		for(int i =0; i<productPic.length;i++) {
			str += productPic[i].getOriginalFilename()+",";
			File file = new File("C:\\UploadImage\\AuctionList",productPic[i].getOriginalFilename());
			if(file.exists()) {
				file = new File("C:\\UploadImage\\AuctionList","1"+productPic[i].getOriginalFilename());
			}
			productPic[i].transferTo(file);
		}
		dto.setProductPic(str);
		productDAO.insertProduct(dto);
		
		return "redirect:/";
	}
	
	@RequestMapping("/deleteProduct")
	public String deleteProduct(AuctionDto dto) {
		productDAO.deleteProduct(dto);
		
		return "redirect:/";
	}
	
	@RequestMapping("/productList")
	public String costPrice(AuctionDto dto) {
		
		
		
		productDAO.deleteProduct(dto);
		
		return "redirect:/";
	}
	
//	public (){
//		productDAO.insertCustomer(dto);
//	}
	
	
	
	
	
}
