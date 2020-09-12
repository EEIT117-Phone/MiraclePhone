package org.iii.eeit117.project.model.vo;





import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "PRODUCT")
public class ProductVo {

	public static final String PRODUCTID = "productId";
	public static final String ACCOUNT = "account";
	public static final String PHONETYPE = "phoneType";
	public static final String MEMORY = "memory";
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

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PRODUCTID", nullable = false)
	private Integer productId;
	
//	@ManyToOne(fetch=FetchType.LAZY)
//    @JoinColumn(name="Account")
	@Column(name = "ACCOUNT")

	private String account;

	@Column(name = "PHONETYPE")
	private String phoneType;

	@Column(name = "MEMORY")
	private String memory;

	@Column(name = "COLOR")
	private String color;

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

	@Column(name = "FILE1")
	private Blob file1;

	@Column(name = "FILE2")
	private Blob file2;

	@Column(name = "FILE3")
	private Blob file3;

	@Column(name = "FILE4")
	private Blob file4;

	@Column(name = "FILE5")
	private Blob file5;

	@Column(name = "FILE6")
	private Blob file6;
	
	@Transient
	MultipartFile productImage1;
	@Transient
	MultipartFile productImage2;
	@Transient
	MultipartFile productImage3;
	@Transient
	MultipartFile productImage4;
	@Transient
	MultipartFile productImage5;
	@Transient
	MultipartFile productImage6;


	public MultipartFile getProductImage1() {
		return productImage1;
	}

	public void setProductImage1(MultipartFile productImage1) {
		this.productImage1 = productImage1;
	}

	public MultipartFile getProductImage2() {
		return productImage2;
	}

	public void setProductImage2(MultipartFile productImage2) {
		this.productImage2 = productImage2;
	}

	public MultipartFile getProductImage3() {
		return productImage3;
	}

	public void setProductImage3(MultipartFile productImage3) {
		this.productImage3 = productImage3;
	}

	public MultipartFile getProductImage4() {
		return productImage4;
	}

	public void setProductImage4(MultipartFile productImage4) {
		this.productImage4 = productImage4;
	}

	public MultipartFile getProductImage5() {
		return productImage5;
	}

	public void setProductImage5(MultipartFile productImage5) {
		this.productImage5 = productImage5;
	}

	public MultipartFile getProductImage6() {
		return productImage6;
	}

	public void setProductImage6(MultipartFile productImage6) {
		this.productImage6 = productImage6;
	}

	@ManyToOne
    @JoinColumn(name="ORDER_ID")
	private OrderInfoVo orderInfoVO;

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

	public String getPhoneType() {
		return phoneType;
	}

	public void setPhoneType(String phoneType) {
		this.phoneType = phoneType;
	}

	public String getMemory() {
		return memory;
	}

	public void setMemory(String memory) {
		this.memory = memory;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
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

	public Blob getFile1() {
		return file1;
	}

	public void setFile1(Blob file1) {
		this.file1 = file1;
	}

	public Blob getFile2() {
		return file2;
	}

	public void setFile2(Blob file2) {
		this.file2 = file2;
	}

	public Blob getFile3() {
		return file3;
	}

	public void setFile3(Blob file3) {
		this.file3 = file3;
	}

	public Blob getFile4() {
		return file4;
	}

	public void setFile4(Blob file4) {
		this.file4 = file4;
	}

	public Blob getFile5() {
		return file5;
	}

	public void setFile5(Blob file5) {
		this.file5 = file5;
	}

	public Blob getFile6() {
		return file6;
	}

	public void setFile6(Blob file6) {
		this.file6 = file6;
	}

	public OrderInfoVo getOrderInfoVO() {
		return orderInfoVO;
	}

	public void setOrderInfoVO(OrderInfoVo orderInfoVO) {
		this.orderInfoVO = orderInfoVO;
	}

}
