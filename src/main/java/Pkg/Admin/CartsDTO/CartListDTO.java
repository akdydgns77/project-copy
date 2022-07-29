package Pkg.Admin.CartsDTO;

public class CartListDTO {

	private String pId;
	private int cQty;
	private int sPrice;
	private String pName;
	private String saveName;
	private String usignId;
	private String cIdx;
	
	
	public String getcIdx() {
		return cIdx;
	}
	public void setcIdx(String cIdx) {
		this.cIdx = cIdx;
	}
	public String getSaveName() {
		return saveName;
	}
	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public int getcQty() {
		return cQty;
	}
	public void setcQty(int cQty) {
		this.cQty = cQty;
	}
	public int getsPrice() {
		return sPrice;
	}
	public void setsPrice(int sPrice) {
		this.sPrice = sPrice;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getUsignId() {
		return usignId;
	}
	public void setUsignId(String usignId) {
		this.usignId = usignId;
	}

}
