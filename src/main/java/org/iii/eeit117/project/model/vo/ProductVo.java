package org.iii.eeit117.project.model.vo;





import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.eeit117.project.model.converter.PhoneColorConverter;
import org.iii.eeit117.project.model.converter.PhoneStorageConverter;
import org.iii.eeit117.project.model.converter.PhoneTypeConverter;
import org.iii.eeit117.project.model.data.PhoneColorEnum;
import org.iii.eeit117.project.model.data.PhoneStorageEnum;
import org.iii.eeit117.project.model.data.PhoneTypeEnum;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "PRODUCT")
public class ProductVo {

	public static final String PRODUCTID = "productId";
	public static final String ACCOUNT = "account";
	public static final String PHONETYPE = "phoneType";
	public static final String STORAGE = "storage";
	public static final String COLOR = "color";
	public static final String PHONESORT = "phoneSort";
	public static final String PHONECONDITION = "phoneCondition";
	public static final String PHONEWARRANTY = "phoneWarranty";
	public static final String HEADPHONE = "headPhone";
	public static final String LINE = "line";
	public static final String PLUG = "plug";
	public static final String SEVEN = "seven";
	public static final String FAMILY = "family";
	public static final String POST = "post";
	public static final String FACE = "face";
	public static final String YEAROFMANUFACTURE = "yearOfManufacture";
	public static final String COUNTY = "county";
	public static final String DISTRICT = "district";
	public static final String ZIPCODE = "zipcode";
	public static final String AMOUNT = "amount";
	public static final String SELLREASON = "sellReason";
	public static final String FILE1 = "file1";
	public static final String FILE2 = "file2";
	public static final String FILE3 = "file3";
	public static final String FILE4 = "file4";
	public static final String FILE5 = "file5";
	public static final String FILE6 = "file6";
	public static final String WATCH = "watch";
	public static final String VIP = "vip";
	public static final String STATUS = "status";
	public static final String AD_DATE = "ad_date";
	public static final String AD_TIME = "ad_time";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PRODUCTID", nullable = false)
	private Integer productId;
	
	@Column(name = "ACCOUNT")
	private String account;

	@Column(name = "PHONETYPE")
	@Convert(converter = PhoneTypeConverter.class)
	private PhoneTypeEnum phoneType;

	@Column(name = "STORAGE")
	@Convert(converter = PhoneStorageConverter.class)
	private PhoneStorageEnum storage;
	
	@Column(name = "COLOR")
	@Convert(converter = PhoneColorConverter.class)
	private PhoneColorEnum color;

	@Column(name = "PHONESORT")
	private String phoneSort;

	@Column(name = "PHONECONDITION")
	private String phoneCondition;

	@Column(name = "PHONEWARRANTY")
	private String phoneWarranty;

	@Column(name = "HEADPHONE")
	private String headPhone;

	@Column(name = "LINE")
	private String line;

	@Column(name = "PLUG")
	private String plug;

	@Column(name = "SEVEN")
	private String seven;

	@Column(name = "FAMILY")
	private String family;

	@Column(name = "POST")
	private String post;

	@Column(name = "FACE")
	private String face;

	@DateTimeFormat(pattern="yyyy-MM")
	@Column(name = "YEAROFMANUFACTURE")
	private Date yearOfManufacture;

	@Column(name = "COUNTY")
	private String county;

	@Column(name = "DISTRICT")
	private String district;

	@Column(name = "ZIPCODE")
	private String zipcode;

	@Column(name = "AMOUNT")
	private Integer amount;

	@Column(name = "SELLREASON")
	private String sellReason;

	@Column(name = "PIC1")
	private Integer pic1;

	@Column(name = "PIC2")
	private Integer pic2;

	@Column(name = "PIC3")
	private Integer pic3;

	@Column(name = "PIC4")
	private Integer pic4;

	@Column(name = "PIC5")
	private Integer pic5;

	@Column(name = "PIC6")
	private Integer pic6;
	
	@Column(name = "WATCH")
	private Integer watch;
	
	@Column(name = "VIP")
	private String vip;
	@Column(name = "STATUS")
	private Integer status;
	@Column(name = "AD_DATE")
	private Date ad_date;
	@Column(name = "EXPIRY_DATE")
	private Date expiry_date;

	@ManyToOne
    @JoinColumn(name="ORDER_ID")
	private OrderInfoVo orderInfoVO;

	public void setPicId(Integer pos, Integer fileStorageId) {
		if (pos == 1) {
			pic1 = fileStorageId;
		} else if (pos == 2) {
			pic2 = fileStorageId;
		} else if (pos == 3) {
			pic3 = fileStorageId;
		} else if (pos == 4) {
			pic4 = fileStorageId;
		} else if (pos == 5) {
			pic5 = fileStorageId;
		} else if (pos == 6) {
			pic6 = fileStorageId;
		}
	}
	
	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public PhoneTypeEnum getPhoneType() {
		return phoneType;
	}

	public void setPhoneType(PhoneTypeEnum phoneType) {
		this.phoneType = phoneType;
	}

	public PhoneStorageEnum getStorage() {
		return storage;
	}

	public void setStorage(PhoneStorageEnum storage) {
		this.storage = storage;
	}

	public PhoneColorEnum getColor() {
		return color;
	}

	public void setColor(PhoneColorEnum color) {
		this.color = color;
	}

	public String getPhoneSort() {
		return phoneSort;
	}

	public void setPhoneSort(String phoneSort) {
		this.phoneSort = phoneSort;
	}

	public String getPhoneCondition() {
		return phoneCondition;
	}

	public void setPhoneCondition(String phoneCondition) {
		this.phoneCondition = phoneCondition;
	}

	public String getPhoneWarranty() {
		return phoneWarranty;
	}

	public void setPhoneWarranty(String phoneWarranty) {
		this.phoneWarranty = phoneWarranty;
	}

	public String getHeadPhone() {
		return headPhone;
	}

	public void setHeadPhone(String headPhone) {
		this.headPhone = headPhone;
	}

	public String getLine() {
		return line;
	}

	public void setLine(String line) {
		this.line = line;
	}

	public String getPlug() {
		return plug;
	}

	public void setPlug(String plug) {
		this.plug = plug;
	}

	public String getSeven() {
		return seven;
	}

	public void setSeven(String seven) {
		this.seven = seven;
	}

	public String getFamily() {
		return family;
	}

	public void setFamily(String family) {
		this.family = family;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getFace() {
		return face;
	}

	public void setFace(String face) {
		this.face = face;
	}

	public Date getYearOfManufacture() {
		return yearOfManufacture;
	}

	public void setYearOfManufacture(Date yearOfManufacture) {
		this.yearOfManufacture = yearOfManufacture;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getSellReason() {
		return sellReason;
	}

	public void setSellReason(String sellReason) {
		this.sellReason = sellReason;
	}

	public Integer getPic1() {
		return pic1;
	}

	public void setPic1(Integer pic1) {
		this.pic1 = pic1;
	}

	public Integer getPic2() {
		return pic2;
	}

	public void setPic2(Integer pic2) {
		this.pic2 = pic2;
	}

	public Integer getPic3() {
		return pic3;
	}

	public void setPic3(Integer pic3) {
		this.pic3 = pic3;
	}

	public Integer getPic4() {
		return pic4;
	}

	public void setPic4(Integer pic4) {
		this.pic4 = pic4;
	}

	public Integer getPic5() {
		return pic5;
	}

	public void setPic5(Integer pic5) {
		this.pic5 = pic5;
	}

	public Integer getPic6() {
		return pic6;
	}

	public void setPic6(Integer pic6) {
		this.pic6 = pic6;
	}

	public OrderInfoVo getOrderInfoVO() {
		return orderInfoVO;
	}

	public void setOrderInfoVO(OrderInfoVo orderInfoVO) {
		this.orderInfoVO = orderInfoVO;
	}
	
	public Integer getWatch() {
		return watch;
	}
	public void setWatch(Integer watch) {
		this.watch = watch;
	}
	public String getVip() {
		return vip;
	}
	public void setVip(String vip) {
		this.vip = vip;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getAd_date() {
		return ad_date;
	}
	public void setAd_date(Date ad_date) {
		this.ad_date = ad_date;
	}
	public Date getExpiry_date() {
		return expiry_date;
	}
	public void setExpiry_date(Date expiry_date) {
		this.expiry_date = expiry_date;
	}
}
