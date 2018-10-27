/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.nio.file.Paths;
import java.util.StringJoiner;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Computer
 */
public class Util {

    public static String UPLOAD_FILENAME;

    public Util() {
        System.out.println("Init Util");
    }

    public String KeyJoin(String... val) {
        StringJoiner Joiner = new StringJoiner(",");
        for (int i = 0; i < val.length; i++) {
            Joiner.add(val[i]);
        }
        String JoinedString = Joiner.toString();

        return JoinedString;
    }

    public static String getFileExtension(String fileName) {
        if (fileName.lastIndexOf(".") != -1 && fileName.lastIndexOf(".") != 0) {
            return fileName.substring(fileName.lastIndexOf(".") + 1);
        } else {
            return "";
        }
    }

    public static boolean Upload(HttpServletRequest request, HttpServletResponse response, String UPLOAD_DIR, String Req_Param) throws ServletException, IOException {
        String applicationPath = request.getServletContext().getRealPath("");
        String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;
        File uploadFolder = new File(uploadFilePath);
        if (!uploadFolder.exists()) {
            uploadFolder.mkdirs();
        }
        Part filePart = request.getPart(Req_Param);
        String fileName = UUID.randomUUID().toString() + "." + Util.getFileExtension(Paths.get(filePart.getSubmittedFileName()).getFileName().toString());
        String contentType = filePart.getContentType();
        OutputStream out = null;

        InputStream filecontent = null;
        final PrintWriter writer = response.getWriter();

        try {
            out = new FileOutputStream(new File(uploadFilePath + File.separator
                    + fileName));
            filecontent = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            while ((read = filecontent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }
            Util.UPLOAD_FILENAME = fileName;
        } catch (FileNotFoundException fne) {

            System.out.println(fne.getMessage());
            return false;
        } finally {
            if (out != null) {
                out.close();
            }
            if (filecontent != null) {
                filecontent.close();
            }
        }
        return true;
    }


}
