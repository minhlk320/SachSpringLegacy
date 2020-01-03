package se.iuh.sachspringlegacy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import se.iuh.sachspringlegacy.entity.Sach;

@Repository
public class SachDAO { 

	@Autowired
	private JdbcTemplate template;
	
	public List<Sach> laySachTheoMaLoai(String maloai){
		String sql="select * from SACH where MALOAI='"+maloai+"'";
		return template.query(sql, new RowMapper<Sach>() {

			@Override
			public Sach mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Sach sa = new Sach();
				sa.setMasach(rs.getString(1));
				sa.setTen(rs.getString(2));
				sa.setTacgia(rs.getString(3));
				sa.setSotrang(rs.getInt(4));
				sa.setGia(rs.getDouble(5));
				sa.setTomtat(rs.getString(6));
				sa.setMaloai(rs.getString(7));
				sa.setHinh(rs.getString(8));
				return sa;
			}
		});
	}
	public int themSach(Sach s) {
		String sql="insert into SACH values(N'"+s.getMasach()+"', N'"+s.getTen()+"', N'"+s.getTacgia()+"',"+s.getSotrang()+","+s.getGia()+", N'"+s.getTomtat()+"', N'"+s.getMaloai()+"', N'"
				+s.getHinh()+"')"; 
		return template.update(sql);
	}
	
	public Sach layThongTinSachTheoMa(String ma) {
		String sql="select * from SACH where MASACH=?";
		return template.queryForObject(sql, new Object[] {ma},new BeanPropertyRowMapper<Sach>(Sach.class));
	}
	public int xoaSachTheoMa(String ma) {
		String sql="delete from SACH where MASACH='"+ma+"'";
		return template.update(sql);
	}
	public List<Sach> layThongTinSach(String ma){
		String sql="select * from SACH where MASACH='"+ma+"'";
		return template.query(sql, new RowMapper<Sach>() {

			@Override
			public Sach mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Sach sa = new Sach();
				sa.setMasach(rs.getString(1));
				sa.setTen(rs.getString(2));
				sa.setTacgia(rs.getString(3));
				sa.setSotrang(rs.getInt(4));
				sa.setGia(rs.getDouble(5));
				sa.setTomtat(rs.getString(6));
				sa.setMaloai(rs.getString(7));
				sa.setHinh(rs.getString(8));
				return sa;
			}
		});
	}
}
