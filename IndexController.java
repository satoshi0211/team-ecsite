package jp.co.internous.crocus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.internous.crocus.model.domain.MstCategory;
import jp.co.internous.crocus.model.domain.MstProduct;
import jp.co.internous.crocus.model.form.SearchForm;
import jp.co.internous.crocus.model.mapper.MstCategoryMapper;
import jp.co.internous.crocus.model.mapper.MstProductMapper;
import jp.co.internous.crocus.model.session.LoginSession;

@Controller
@RequestMapping("/crocus")
public class IndexController {
	
	@Autowired
	private MstCategoryMapper categoryMapper;
	
	@Autowired
	private MstProductMapper productMapper;
	
	@Autowired
	private LoginSession loginSession;

	@RequestMapping("/")
	public String index(Model m) {
		
		if (!loginSession.getLogined() && loginSession.getTmpUserId() == 0) {
			int tmpUserId = (int)(Math.random() * 10000000 * -1);
			while (tmpUserId > -100000000) {
				tmpUserId *= 10;
			}
			loginSession.setTmpUserId(tmpUserId);
		}
		
		List<MstCategory> categories = categoryMapper.find();
		
		List<MstProduct> products = productMapper.find();
		
		m.addAttribute("categories", categories);
		m.addAttribute("selected", 0);
		m.addAttribute("products", products);
		m.addAttribute("loginSession", loginSession);
		
		return "index";
	}
	
	@RequestMapping("/searchItem")
	public String index(SearchForm f, Model m) {
		List<MstProduct> products = null;
		
		String keywords = f.getKeywords().replaceAll("　", " ").replaceAll("\\s{2,}", " ").trim();
		if (f.getCategory() == 0) {
			products = productMapper.findByProductName(keywords.split(" "));
		}else {
			products = productMapper.findByCategoryAndProductName(f.getCategory(), keywords.split(" "));
		}
		
		List<MstCategory> categories = categoryMapper.find();
		m.addAttribute("keywords", keywords);
		m.addAttribute("selected", f.getCategory());
		m.addAttribute("categories", categories);
		m.addAttribute("products", products);
		m.addAttribute("loginSession", loginSession);
		
		return "index";
		
	}
	
}
