package org.iii.eeit117.project.model.vo;

import java.text.SimpleDateFormat;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SELLER")
public class SellerVo {

	public static final String PRODUCTID = "productId";
	public static final String ACCOUNT = "account";
	public static final String PHONETYPE = "phoneType";
	public static final String MEMORY = "memory";
	public static final String COLOR = "color";
	public static final String PHONESORT = "phoneSort";
	public static final String PHONECONDITION = "phoneCondition";
	public static final String PHONEWARRANTY = "phoneWarranty";
	public static final String HEADPHONE = "headPhone";
	public static final String SOCKET = "socket";
	public static final String PLUG = "plug";
	public static final String SEVEN = "seven";
	public static final String FAMILY = "family";
	public static final String POST = "post";
	public static final String FACE = "face";
	public static final String YEAROFMANUFACTURE = "yearOfManufacture";
	public static final String COUNTY = "county";
	public static final String DISTRICT = "district";
	public static final String TWZIPCODE = "twZipCode";
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
	private int productId;

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

	@Column(name = "SOCKET")
	private String socket;

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

	@Column(name = "YEAROFMANUFACTURE")
	private SimpleDateFormat yearOfManufacture;

	@Column(name = "COUNTY")
	private String county;

	@Column(name = "DISTRICT")
	private String district;

	@Column(name = "TWZIPCODE")
	private String twZipCode;

	@Column(name = "AMOUNT")
	private int amount;

	@Column(name = "SELLREASON")
	private String sellReason;

	@Column(name = "FILE1")
	private byte[] file1;

	@Column(name = "FILE2")
	private byte[] file2;

	@Column(name = "FILE3")
	private byte[] file3;

	@Column(name = "FILE4")
	private byte[] file4;

	@Column(name = "FILE5")
	private byte[] file5;

	@Column(name = "FILE6")
	private byte[] file6;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
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

	public String getSocket() {
		return socket;
	}

	public void setSocket(String socket) {
		this.socket = socket;
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

	public SimpleDateFormat getYearOfManufacture() {
		return yearOfManufacture;
	}

	public void setYearOfManufacture(SimpleDateFormat yearOfManufacture) {
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

	public String getTwZipCode() {
		return twZipCode;
	}

	public void setTwZipCode(String twZipCode) {
		this.twZipCode = twZipCode;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getSellReason() {
		return sellReason;
	}

	public void setSellReason(String sellReason) {
		this.sellReason = sellReason;
	}

	public byte[] getFile1() {
		return file1;
	}

	public void setFile1(byte[] file1) {
		this.file1 = file1;
	}

	public byte[] getFile2() {
		return file2;
	}

	public void setFile2(byte[] file2) {
		this.file2 = file2;
	}

	public byte[] getFile3() {
		return file3;
	}

	public void setFile3(byte[] file3) {
		this.file3 = file3;
	}

	public byte[] getFile4() {
		return file4;
	}

	public void setFile4(byte[] file4) {
		this.file4 = file4;
	}

	public byte[] getFile5() {
		return file5;
	}

	public void setFile5(byte[] file5) {
		this.file5 = file5;
	}

	public byte[] getFile6() {
		return file6;
	}

	public void setFile6(byte[] file6) {
		this.file6 = file6;
	}

}
