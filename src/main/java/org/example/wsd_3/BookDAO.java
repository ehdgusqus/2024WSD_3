package org.example.wsd_3;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDAO {
    private final JdbcTemplate jdbcTemplate;

    public BookDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // 새 책 추가
    public boolean saveBook(BookVO book) {
        String sql = "INSERT INTO BOOK (title, writer, genre, content, stock) VALUES (?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, book.getTitle(), book.getWriter(), book.getGenre(),
                book.getContent(), book.getStock()) > 0;
    }

    // 특정 책 조회
    public BookVO findBookById(int id) {
        try {
            String sql = "SELECT * FROM BOOK WHERE id = ?";
            return jdbcTemplate.queryForObject(sql, (rs, rowNum) ->
                    new BookVO(rs.getInt("id"), rs.getString("title"), rs.getString("writer"),
                            rs.getString("genre"), rs.getString("content"),
                            rs.getInt("stock"), rs.getDate("createDate")), id);
        } catch (EmptyResultDataAccessException e) {
            return null; // 결과가 없을 경우 null 반환
        }
    }

    // 모든 책 조회
    public List<BookVO> findAllBooks() {
        String sql = "SELECT * FROM BOOK";

        return jdbcTemplate.query(sql, (rs, rowNum) ->
                new BookVO(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("writer"),
                        rs.getString("genre"),
                        rs.getString("content"),
                        rs.getInt("stock"),
                        rs.getDate("createDate")
                ));
    }

    // 책 정보 수정
    public boolean updateBook(BookVO book) {
        String sql = "UPDATE BOOK SET title = ?, writer = ?, genre = ?, content = ?, stock = ? WHERE id = ?";
        return jdbcTemplate.update(sql, book.getTitle(), book.getWriter(), book.getGenre(),
                book.getContent(), book.getStock(), book.getId()) > 0;
    }

    // 책 삭제
    public boolean deleteBook(int id) {
        String sql = "DELETE FROM BOOK WHERE id = ?";
        return jdbcTemplate.update(sql, id) > 0;
    }

    // 책 조회
    public List<BookVO> searchBooks(String keyword) {
        String sql = "SELECT * FROM BOOK WHERE title LIKE ? OR writer LIKE ? OR genre LIKE ?";
        String searchKeyword = "%" + keyword + "%";
        return jdbcTemplate.query(sql, new Object[]{searchKeyword, searchKeyword, searchKeyword},
                (rs, rowNum) -> new BookVO(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("writer"),
                        rs.getString("genre"),
                        rs.getString("content"),
                        rs.getInt("stock"),
                        rs.getDate("createDate")
                ));
    }

}
