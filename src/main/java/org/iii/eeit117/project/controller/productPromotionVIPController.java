package org.iii.eeit117.project.controller;




import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
import ecpay.payment.integration.domain.AioCheckOutOneTime;


@Controller
@RequestMapping(value = "/" + productPromotionVIPController.MODULE_NAME)
public class productPromotionVIPController {

	public static final String MODULE_NAME = "productPromotionVIP";
	private ProductVo forsaveproduct;
	
	private String status;


	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(@ModelAttribute("product") ProductVo product) {
		
		forsaveproduct=product;
		
		return MODULE_NAME;
	}
	
	
	@Autowired
	private ProductService productService;

	@GetMapping("/payalready")
	public String payalready(Model m)throws ParseException {
		
	
		
		forsaveproduct.setStatus(status);
		productService.save(forsaveproduct);
		

		m.addAttribute("product", forsaveproduct);
		
		return "productPromotionConfirm";
		
		
	}
	public static AllInOne all;
	
	private static void initial() {
		all = new AllInOne("");
	}
	
	
    @PostMapping(value = "/greenPay.controller",produces = "text/html;charset=UTF-8")
    
    public @ResponseBody String greenPay(@RequestParam("promotecase") String promotecase,
    
    Model m,HttpSession httpSession) {
    try {
    initial();
    
    
    String[] promteColumn = promotecase.split(" "); 
    String VIPlevel=promteColumn[0];
    int adlastTime=Integer.parseInt(promteColumn[1]);
    status=promteColumn[2];
    String caseChoose=promteColumn[3];
    String caseAmount=promteColumn[4];
    Date ad_date=new Date();
   
    Calendar calendar=Calendar.getInstance();
    calendar.setTime(ad_date);
    calendar.add(Calendar.DAY_OF_MONTH, +adlastTime);
    Date expiry_date=calendar.getTime();
    SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
    String dateString2 = sdf2.format(ad_date);
    
    forsaveproduct.setVip(VIPlevel);
    forsaveproduct.setAd_date(dateString2);
    forsaveproduct.setExpiry_date(expiry_date);
    forsaveproduct.setWatch(0);
    
    productService.save(forsaveproduct);
    
    AioCheckOutALL order = new AioCheckOutALL();// 產生訂單物件

    String id = "temporaryID";// 取得會員 利用會員Id跟日期 創建訂單編號
    Date date = new Date();// 目前時間
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");// 設定日期格式 給訂單編號用
    String dateString = sdf.format(date);// 進行轉換
    SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");// 設定日期格式 給日期用
    String dateStringToMerchantTradeDate = sdf1.format(date);// 進行轉換
    String merchantTradeNo = id.toString() + dateString;// 合併訂單編號
    System.out.println("有進綠界");
    order.setChooseSubPayment("Credit");
    order.setMerchantID(dateString);
    order.setMerchantTradeNo(dateString);
    order.setMerchantTradeDate(dateStringToMerchantTradeDate);
    order.setTotalAmount(caseAmount);
    order.setTradeDesc("FarmVille");
    order.setItemName(caseChoose);
    order.setReturnURL(" https://0d41e95d9488.ngrok.io/MiraclePhone");
    order.setClientBackURL(" https://0d41e95d9488.ngrok.io/MiraclePhone/productPromotionVIP/payalready");
    order.setNeedExtraPaidInfo("N");
    String form = all.aioCheckOut(order, null);
    
    return form;
    } catch (Exception e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
    }
    return null;
    }

	
}
