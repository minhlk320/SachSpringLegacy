package se.iuh.sachspringlegacy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import se.iuh.sachspringlegacy.entity.LoaiSach;

@Repository
public class LoaiSachDAO {

	@Autowired
	private JdbcTemplate template;
	
	@Autowired 
	SachDAO sdao;
	
	public List<LoaiSach> layDanhSachLoaiSach(){
		String sql="select * from LOAISACH";
		return template.query(sql, new RowMapper<LoaiSach>() {

			@Override
			public LoaiSach mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				LoaiSach ls= new LoaiSach();
				ls.setMaloaisach(rs.getString(1));
				ls.setTenloai(rs.getString(2));
				ls.setTukhoa(rs.getString(3));
				ls.setMota(rs.getString(4));
				ls.setDssach(sdao.laySachTheoMaLoai(rs.getString(1)));
				return ls;
			}
		});
	}
}
