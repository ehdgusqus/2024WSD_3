package org.example.wsd_3;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/books")
public class BookController {
    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    // 모든 책 조회
    @GetMapping("/list")
    public String getAllBooks(Model model) {
        List<BookVO> books = bookService.getAllBooks();
        model.addAttribute("books", books);

        return "list"; // list.jsp로 데이터 전달
    }

    // 특정 책 조회 (상세보기)
    @GetMapping("/view/{id}")
    public String getBookById(@PathVariable int id, Model model) {
        BookVO book = bookService.getBookById(id);
        if (book == null) {
            throw new RuntimeException("Book with ID " + id + " not found");
        }
        model.addAttribute("book", book);
        return "view"; // view.jsp로 데이터 전달
    }


    // 새 책 추가 페이지
    @GetMapping("/write")
    public String showWriteForm() {
        return "write"; // write.jsp로 이동
    }

    // 새 책 추가
    @PostMapping("/addBook")
    public String addBook(@RequestParam("title") String title,
                          @RequestParam("writer") String writer,
                          @RequestParam("genre") String genre,
                          @RequestParam("content") String content,
                          @RequestParam("stock") int stock) {
        BookVO book = new BookVO(0, title, writer, genre, content, stock, null);
        bookService.addBook(book);

        return "redirect:/books/list"; // 성공 시 목록으로 리다이렉트
    }

    // 책 수정 페이지
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model) {
        BookVO book = bookService.getBookById(id);
        model.addAttribute("book", book);

        return "edit"; // edit.jsp로 데이터 전달
    }

    // 책 수정
    @PostMapping("/updateBook")
    public String updateBook(@RequestParam("id") int id,
                             @RequestParam("title") String title,
                             @RequestParam("writer") String writer,
                             @RequestParam("genre") String genre,
                             @RequestParam("content") String content,
                             @RequestParam("stock") int stock) {
        BookVO book = new BookVO(id, title, writer, genre, content, stock, null);
        bookService.updateBook(book);

        return "redirect:/books/list"; // 수정 후 목록으로 리다이렉트
    }

    // 책 삭제
    @PostMapping("/deleteBook")
    public String deleteBook(@RequestParam("id") int id) {
        bookService.deleteBook(id);

        return "redirect:/books/list"; // 삭제 후 목록으로 리다이렉트
    }

    // 조회
    @GetMapping("/search")
    public String searchBooks(@RequestParam("keyword") String keyword, Model model) {
        // 서비스 호출하여 검색 결과 가져오기
        List<BookVO> books = bookService.searchBooks(keyword);
        model.addAttribute("books", books);
        model.addAttribute("keyword", keyword);
        return "list"; // 검색 결과를 list.jsp로 전달
    }

}
