package com.ACTION;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class userAction extends ActionSupport implements ServletRequestAware {
	/**
	 * test
	 */
	private static final long serialVersionUID = 1L;
	private static final int BUFFER_SIZE = 16 * 1024;
	private HttpServletRequest request;
	private String test;
	private File myFile;
	private String imageFileName;
	private String caption;

	private File[] uploads;
	private String[] uploadFileNames;
	private String[] uploadContentTypes;

	public File[] getUpload() {
		return this.uploads;
	}

	public void setUpload(File[] upload) {
		this.uploads = upload;
	}

	public String[] getUploadFileName() {
		return this.uploadFileNames;
	}

	public void setUploadFileName(String[] uploadFileName) {
		this.uploadFileNames = uploadFileName;
	}

	public String[] getUploadContentType() {
		return this.uploadContentTypes;
	}

	public void setUploadContentType(String[] uploadContentType) {
		this.uploadContentTypes = uploadContentType;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	public String test() {
		//String name = request.getParameter("name");
		String ee = request.getParameter("job");
		request.setAttribute("ee", ee);
		System.out.println(request.getAttribute("b").toString());

		return SUCCESS;
	}

	public String uploads() {
		for (int i = 0; i < uploads.length; i++) {
			System.out.println();
			imageFileName = new Date().getTime() + uploadFileNames[i];
			File imageFile = new File(
					"D:/Èí¼þ/myEclipse8.5/workspace/PersonalPage/WebRoot/upload"
							+ "/" + imageFileName);
			if (!myFile.equals(null)) {
				copy(myFile, imageFile);
			}
		}
		return SUCCESS;
	}

	public String upload() {
		System.out.println(myFile);
		// File imageFile = new
		// File("D:/Èí¼þ/myEclipse8.5/workspace/PersonalPage/WebRoot/upload" + "/"
		// + fileName);
		// File imageFile = new
		// File(ServletActionContext.getServletContext().getRealPath("upload") +
		// "/" + fileName);
		try {
			if (!myFile.equals(null)) {
				// copy(myFile, imageFile);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	private static void copy(File src, File dst) {
		try {
			InputStream in = null;
			OutputStream out = null;
			try {
				in = new BufferedInputStream(new FileInputStream(src),
						BUFFER_SIZE);
				out = new BufferedOutputStream(new FileOutputStream(dst),
						BUFFER_SIZE);
				byte[] buffer = new byte[BUFFER_SIZE];
				while (in.read(buffer) > 0) {
					out.write(buffer);
				}
			} finally {
				if (null != in) {
					in.close();
				}
				if (null != out) {
					out.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

}