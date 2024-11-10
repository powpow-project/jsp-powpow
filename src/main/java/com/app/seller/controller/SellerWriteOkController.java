package com.app.seller.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

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

public class SellerWriteOkController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductVO productVO = new ProductVO();
		ProductDAO productDAO = new ProductDAO();
		SellerDAO sellerDAO = new SellerDAO();
		String directory =req.getServletContext().getRealPath("/assets/images/product");
		int sizeLimit = 10*500*500; // 100mb
      
		DateTimeFormatter fomatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		String dateTime = LocalDateTime.now().format(fomatter);
		
		HttpSession session = req.getSession();
		String sellerEmail = (String)session.getAttribute("sellerEmail");
		Long sellerId = sellerDAO.selectBySellerEmail(sellerEmail).getId();

		String productCode = dateTime.substring(dateTime.length() - 10) + sellerId;
      
      
      
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
         String subImage1 = multi.getFilesystemName("productSubImage1");
         String subImage2 = multi.getFilesystemName("productSubImage2");
         String subImage3 = multi.getFilesystemName("productSubImage3");
         productVO.setSellerId(sellerId);
         productVO.setProductName(multi.getParameter("productName"));
         productVO.setProductPrice(Integer.parseInt(multi.getParameter("productPrice")));
         productVO.setProductAge(multi.getParameter("productAge"));
         productVO.setProductStock(Integer.parseInt(multi.getParameter("productStock")));
         productVO.setProductType(multi.getParameter("productType"));
         productVO.setProductDetail(multi.getParameter("productDetail"));
         productVO.setProductCategoryName(multi.getParameter("productCategoryName"));
         productVO.setProductCode(productCode);
         
         // 파일이 성공적으로 업로드되었는지 확인
         if (mainImage != null) {
            productVO.setProductImage(mainImage);
         } else {
        	productVO.setProductImage("default-image.svg");
         }
         
         if(subImage1 != null) {
        	 productVO.setProductSubImage1(subImage1);
         }else {
        	 productVO.setProductSubImage1("default-image.svg");
         }
         
         if(subImage2 != null) {
        	 productVO.setProductSubImage2(subImage2);
         }else {
        	 productVO.setProductSubImage2("default-image.svg");
         }
         
         if(subImage3 != null) {
        	 productVO.setProductSubImage3(subImage3);
         }else {
        	 productVO.setProductSubImage3("default-image.svg");
         }
         
      } catch (Exception e) {
         e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
      }
      
      productDAO.insert(productVO);
      
      
      result.setRedirect(true);
      result.setPath("../seller/seller-list.seller");
      
      return result;
   }

}

