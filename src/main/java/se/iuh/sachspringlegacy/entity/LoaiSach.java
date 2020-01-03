package se.iuh.sachspringlegacy.entity;

import java.util.List;

public class LoaiSach {

	private String maloaisach;
	private String tenloai;
	private String tukhoa;
	private String mota;
	private List<Sach> dssach;
	public LoaiSach(String maloaisach, String tenloai, String tukhoa, String mota) {
		super();
		this.maloaisach = maloaisach;
		this.tenloai = tenloai;
		this.tukhoa = tukhoa;
		this.mota = mota;
	}
	public LoaiSach() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMaloaisach() {
		return maloaisach;
	}
	public void setMaloaisach(String maloaisach) {
		this.maloaisach = maloaisach;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	public String getTukhoa() {
		return tukhoa;
	}
	public void setTukhoa(String tukhoa) {
		this.tukhoa = tukhoa;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public List<Sach> getDssach() {
		return dssach;
	}
	public void setDssach(List<Sach> dssach) {
		this.dssach = dssach;
	}
	@Override
	public String toString() {
		return  maloaisach ;
	}
	
	
}
