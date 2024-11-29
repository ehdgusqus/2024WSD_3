package org.example.wsd_3;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    private final BookDAO bookDAO;

    // 생성자 주입
    public BookService(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    // 1. 모든 책 조회
    public List<BookVO> getAllBooks() {
        return bookDAO.findAllBooks(); // DAO 호출하여 모든 책 반환
    }

    // 2. 특정 책 조회
    public BookVO getBookById(int id) {
        return bookDAO.findBookById(id); // DAO 호출하여 ID로 책 반환
    }

    // 3. 새 책 추가
    public void addBook(BookVO book) {
        boolean isSaved = bookDAO.saveBook(book);
        if (!isSaved) {
            throw new RuntimeException("Failed to save the book.");
        }
    }


    // 4. 책 정보 수정
    public void updateBook(BookVO book) {
        boolean isUpdate = bookDAO.updateBook(book); // DAO 호출하여 책 정보 수정
        if(!isUpdate) {
            throw new RuntimeException("Failed to update the book.");
        }
    }

    // 5. 책 삭제
    public void deleteBook(int id) {
        boolean isDelete = bookDAO.deleteBook(id); // DAO 호출하여 책 삭제
        if(!isDelete){
            throw new RuntimeException("Failed to delete the book.");
        }
    }
}
