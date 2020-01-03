package se.iuh.sachspringlegacy.entity;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

public class Sach {

	@NotBlank(message="Mã sách không được bỏ trống")
	private String masach;
	@NotBlank(message="Tên sách không được bỏ trống")
	private String ten;
	@NotBlank(message="Tác giả không được bỏ trống")
	@Size(max=100)
	private String tacgia;
	@NotNull(message="Số trang không được bỏ trống")
	private int sotrang;
	@NotNull(message="Giá không được bỏ trống")
	private double gia;
	
	private String tomtat;
	private String hinh;
	private String maloai;
	public Sach(String masach, String ten, String tacgia, int sotrang, double gia, String tomtat, String hinh,
			String maloai) {
		super();
		this.masach = masach;
		this.ten = ten;
		this.tacgia = tacgia;
		this.sotrang = sotrang;
		this.gia = gia;
		this.tomtat = tomtat;
		this.hinh = hinh;
		this.maloai = maloai;
	}
	public Sach() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public int getSotrang() {
		return sotrang;
	}
	public void setSotrang(int sotrang) {
		this.sotrang = sotrang;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public String getTomtat() {
		return tomtat;
	}
	public void setTomtat(String tomtat) {
		this.tomtat = tomtat;
	}
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	@Override
	public String toString() {
		return "Sach [masach=" + masach + ", ten=" + ten + ", tacgia=" + tacgia + ", sotrang=" + sotrang + ", gia="
				+ gia + ", tomtat=" + tomtat + ", hinh=" + hinh + ", maloai=" + maloai + "]";
	}
	
}
