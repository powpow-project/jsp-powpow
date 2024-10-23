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
		String productCode = String.valueOf((int)(Math.random() * 900000) + 100000);
		
		
		HttpSession session = req.getSession();
		
//		String sellerEmail = (String)session.getAttribute("sellerEmail");
		String sellerEmail = "abc123";
		Long sellerId = sellerDAO.selectBySellerEmail(sellerEmail).getId();

		
		
		
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
			productVO.setSellerId(sellerId);
			productVO.setProductName(multi.getParameter("productName"));
			productVO.setProductPrice(Integer.parseInt(multi.getParameter("productPrice")));
			productVO.setProductStock(Integer.parseInt(multi.getParameter("productStock")));
			productVO.setProductType(multi.getParameter("productType"));
			productVO.setProductDetail(multi.getParameter("productDetail"));
			productVO.setProductCategoryName(multi.getParameter("productCategoryName"));
			productVO.setProductCode(productCode);
			
			// 파일이 성공적으로 업로드되었는지 확인
			if (mainImage != null) {
				productVO.setProductImage(mainImage);
				productVO.setProductSubImage1(fileName2);
				productVO.setProductSubImage2(fileName3);
				productVO.setProductSubImage3(fileName4);
				
			} else {
				
			}
		} catch (Exception e) {
			e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
		}
		
		productDAO.insert(productVO);
		
		
		result.setRedirect(true);
		result.setPath("../product/product-list.product");
		
		return result;
	}

}
