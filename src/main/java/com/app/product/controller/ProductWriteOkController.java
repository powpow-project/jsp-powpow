package com.app.product.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.dao.SellerDAO;
import com.app.vo.ProductVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductVO productVO = new ProductVO();
		ProductDAO productDAO = new ProductDAO();
		SellerDAO sellerDAO = new SellerDAO();
		String directory =req.getServletContext().getRealPath("/assets/images/product");
		int sizeLimit = 20*500*500; // 100mb
		String productCode = String.valueOf(productVO.getId()) + (int) (Math.random() * 9000) + 1000;
		
		
		HttpSession session = req.getSession();
		
//		String sellerEmail = (String)session.getAttribute("sellerEmail");
		String sellerEmail = "abc123";
		Long sellerId = sellerDAO.selectBySellerEmail(sellerEmail).getId();

		
		productVO.setSellerId(sellerId);
		productVO.setProductName(req.getParameter("productName"));
		productVO.setProductPrice(20000);
		productVO.setProductStock(20000);
		productVO.setProductType(req.getParameter("productType"));
		productVO.setProductDetail(req.getParameter("productDetail"));
		productVO.setProductCategoryName(req.getParameter("productCategoryName"));
		productVO.setProductCode(productCode);
		
		
		// 디렉토리가 존재하지 않으면 생성
		File dir = new File(directory);
		if (!dir.exists()) {
			dir.mkdirs(); // 디렉토리 생성
		}
		
		try {
			// 파일 업로드 처리
			MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
			
			// 업로드된 파일의 제목과 이름 가져오기
			String title = multi.getParameter("title");
			String mainImage = multi.getFilesystemName("productImage");
			String fileName2 = multi.getFilesystemName("productSubImage1");
			String fileName3 = multi.getFilesystemName("productSubImage2");
			String fileName4 = multi.getFilesystemName("productSubImage3");
			
			// 파일이 성공적으로 업로드되었는지 확인
			if (mainImage != null) {
				productVO.setProductImage(mainImage);
				productVO.setProductSubImage1(fileName2);
				productVO.setProductSubImage2(fileName3);
				productVO.setProductSubImage3(fileName4);
				System.out.println(mainImage);
				System.out.println(fileName2);
				System.out.println(fileName3);
				System.out.println(fileName4);
				
			} else {
				
			}
		} catch (Exception e) {
			e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
		}
		
		System.out.println(productVO);
		
		productDAO.insert(productVO);
		
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/product-list.product");
		
		return result;
	}

}
