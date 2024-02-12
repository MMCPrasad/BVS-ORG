/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bvs.org.controllers;

import bvs.org.datatable.DataTableRequest;
import bvs.org.datatable.DataTablesResponse;
import bvs.org.dto.DhammaContentDto;
import bvs.org.dto.DhammaVideoDto;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import bvs.org.model.DhammaContent;
import bvs.org.model.DhammaVideo;
import bvs.org.service.DhammaVideoService;

@RestController
@RequestMapping("/course")
public class DhammaVideoController {

    @Autowired
    DhammaVideoService service;

    @PostMapping("/dhamma-videos")
    public DataTablesResponse<DhammaContentDto> getDhammaContents(@RequestBody DataTableRequest param) throws Exception {
        return service.getDhammaContents(param);
    }

    @GetMapping("/video-details/{id}")
    public ResponseEntity<CommonResponse> getDhammaContent(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getDhammaContent(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-video")
    public ResponseEntity<CommonResponse> deactivateDhammaContent(@RequestParam Integer id) throws Exception {
        service.deactivateDhammaContent(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-video")
    public ResponseEntity<CommonResponse> reactivateDhammaContent(@RequestParam Integer id) throws Exception {
        service.reactivateDhammaContent(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    //Attatchment Controller   
//    @PostMapping("/dhamma-attatchment")
//    public DataTablesResponse<DhammaVideoDto> getAttatchemnts(@RequestBody DataTableRequest param) throws Exception {
//        return service.getAttatchemnts(param);
//    }
//    @GetMapping("/{id}")
//    public ResponseEntity<CommonResponse> getAttatchments(@PathVariable Integer id) throws Exception {
//        CommonResponse response = new CommonResponse("Success!", service.getAttatchments(id), 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
    @GetMapping("/attach-videos")
    public Iterable<DhammaVideo> getAllActiveAttatchments() {
        return service.getAllActiveAttatchments();
    }

//    @GetMapping("/attatchment-details/{id}")
//    public ResponseEntity<CommonResponse> Attatchments(@PathVariable Integer id) throws Exception {
//        CommonResponse response = new CommonResponse("Success!", service.getAttatchmentses(id), 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
    @GetMapping("/attachment-details/{id}")
    public ResponseEntity<Map<String, Object>> getAttachmentDetails(@PathVariable Integer id) {
        try {
            List<DhammaVideo> attachments = service.getActiveAttachmentsByDhammaContentId(id);
            Map<String, Object> response = new HashMap<>();
            response.put("data", attachments);
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            // Handle exception and return an error response
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
//    @PostMapping("/deactivate-news")
//    public ResponseEntity<CommonResponse> deactivateAttatchments(@RequestParam Integer id) throws Exception {
//        service.deactivateAttatchments(id);
//        CommonResponse response = new CommonResponse("Success!", 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
//
//    @PostMapping("/reactivate-news")
//    public ResponseEntity<CommonResponse> reactivateAttatchments(@RequestParam Integer id) throws Exception {
//        service.reactivateAttatchments(id);
//        CommonResponse response = new CommonResponse("Success!", 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }

    @PostMapping("/save-attachment")
    @ResponseBody
    public DhammaContent uploadAttachment(MultipartHttpServletRequest req) throws Exception {
        String heading = req.getParameter("heading");
        String desclist = req.getParameter("desclist");
        String link = req.getParameter("link");
        return service.saveAttachment(heading, desclist, link);
    }

//    @PostMapping("/update-attachment")
//    @ResponseBody
//    public DhammaContent updateAttachment(MultipartHttpServletRequest req) throws Exception {
//        Integer id = Integer.parseInt(req.getParameter("id"));
//        String unitName = req.getParameter("name");
//        String link = req.getParameter("link");
//        String desclist = req.getParameter("desclist");
//        Map<String, MultipartFile> files = req.getFileMap();
//        return service.updateAttachment(id, unitName, course, desclist, files);
//    }
    @GetMapping("/path/attachment/{name}")
    @ResponseBody
    public void viewAttachment(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("E-Learning\\Course\\Attachments" + name);

        if (!file.exists()) {
            resp.sendError(404, "file not found");
            return;
        }

        OutputStream out = resp.getOutputStream();
        FileInputStream in = new FileInputStream(file);
        byte[] buffer = new byte[4096];
        int length;
        while ((length = in.read(buffer)) > 0) {
            out.write(buffer, 0, length);
        }
        in.close();
        out.flush();

    }

}
