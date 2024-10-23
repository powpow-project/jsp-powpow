package com.app.seller.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SellerUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		ProductVO productVO = new ProductVO();
		String directory =req.getServletContext().getRealPath("/assets/images/product");
		int sizeLimit = 20*500*500; // 100mb
		
		File dir = new File(directory);
		if (!dir.exists()) {
			dir.mkdirs(); // 디렉토리 생성
		}
		
		try {
			// 파일 업로드 처리
			MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
			
			String title = multi.getParameter("title");
			String mainImage = multi.getFilesystemName("productImage");
			String fileName2 = multi.getFilesystemName("productSubImage1");
			String fileName3 = multi.getFilesystemName("productSubImage2");
			String fileName4 = multi.getFilesystemName("productSubImage3");
			productVO.setProductName(multi.getParameter("productName"));
			productVO.setProductPrice(Integer.parseInt(multi.getParameter("productPrice")));
			productVO.setProductStock(Integer.parseInt(multi.getParameter("productStock")));
			productVO.setProductType(multi.getParameter("productType"));
			productVO.setProductDetail(multi.getParameter("productDetail"));
			productVO.setProductCategoryName(multi.getParameter("productCategoryName"));
			
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
		
		productDAO.update(productVO);
		
		result.setRedirect(true);
		result.setPath("../seller/seller-list.seller");
		return result;
	}

}
