/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bvs.org.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import bvs.org.datatable.DataTableRepo;
import bvs.org.datatable.DataTableRequest;
import bvs.org.datatable.DataTablesResponse;
import bvs.org.dto.DhammaVideoDto;
import bvs.org.dto.DhammaContentDto;
import bvs.org.model.DhammaVideo;
import bvs.org.repo.DhammaVideoRepo;
import java.io.File;
import java.nio.file.Path;
import bvs.org.model.DhammaContent;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;
import org.springframework.web.multipart.MultipartFile;
import static org.springframework.web.servlet.function.RequestPredicates.param;
import static org.springframework.web.servlet.function.RequestPredicates.path;
import bvs.org.repo.DhammaContentRepo;

/**
 *
 * @author L580
 */
@Service
public class DhammaVideoService {

    @Autowired
    private DataTableRepo<DhammaVideoDto> unitDt;
    @Autowired
    private DataTableRepo<DhammaContentDto> attDt;

    @Autowired
    private DhammaVideoRepo videoRepo;
    @Autowired
    private DhammaContentRepo conRepo;

    public DataTablesResponse<DhammaContentDto> getDhammaContents(DataTableRequest param) throws Exception {
        return attDt.getData(DhammaContentDto.class, param, "SELECT x.`id`, x.`heading`, x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id` = x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id` = x.`mod_by`) AS `mod_by`,`mod_on` FROM `dhamma_content` X");

    }

    public DhammaContent getDhammaContent(Integer id) throws Exception {
        DhammaContent not = conRepo.findById(id).get();
        return not;
    }

    private final ObjectMapper mapper = new ObjectMapper();

    //attatchment
//    public DataTablesResponse<DhammaVideoDto> getAttatchemnts(DataTableRequest param) throws Exception {
//        String data = param.getData();
//        JsonNode node = mapper.readTree(data);
//        System.out.println(node);
//        return videoRepo.getData(DhammaVideoDto.class, param, "SELECT x.`id`, x.`att_path` AS 'filename', x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id` = x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id` = x.`mod_by`) AS `mod_by`,`mod_on` FROM `attatchments` X WHERE x.`course` =? and x.`unit`=?", node.get("courseId").asText(), node.get("filter").asText());
//
//    }
    public DhammaContent deactivateDhammaContent(Integer id) throws Exception {
        DhammaContent syst = conRepo.findById(id).get();
        syst.setStatus("deactivate");
        syst = conRepo.save(syst);
        return syst;
    }

    public DhammaContent reactivateDhammaContent(Integer id) throws Exception {
        DhammaContent systems = conRepo.findById(id).get();
        systems.setStatus("active");
        systems = conRepo.save(systems);
        return systems;
    }

    public Iterable<DhammaVideo> getAllActiveAttatchments() {
        return videoRepo.findByStatus("active");
    }

    public List<DhammaVideo> getActiveAttachmentsByDhammaContentId(Integer id) throws Exception {
        return videoRepo.findByContentAndStatus(id, "active");
    }

    public DhammaContent saveAttachment(String heading, String desclist, String link) throws Exception {
        DhammaContent system = new DhammaContent();
        system.setHeading(heading);
        system.setStatus("active");
        system = conRepo.save(system);

        String directoryPath = "BVS-ORG\\Dhamma-Video\\Attachments";
        File directory = new File(directoryPath);
        if (!directory.exists()) {
            if (directory.mkdirs()) {
                System.out.println("Directory created successfully");
            } else {
                throw new Exception("Failed to create directory");
            }
        }

        JsonNode fileList = mapper.readTree(desclist);
        for (int i = 0; i < fileList.size(); i++) {
            JsonNode fileItem = fileList.get(i);

            DhammaVideo attachment = new DhammaVideo();
            attachment.setContent(system.getId());
            attachment.setLink(link);
            attachment.setStatus("active");
            attachment = videoRepo.save(attachment);
            System.out.println("attachment - " + attachment.getId());
            videoRepo.save(attachment);
        }

        return conRepo.save(system);
    }

//    public DhammaVideo updateAttachment(Integer id, String name, String course, String desclist, Map<String, MultipartFile> files) {
//        try {
//            DhammaVideo system = videoRepo.findById(id).orElseThrow(() -> new Exception("DhammaVideo not found"));
//            system.setName(name);
//
//            if (files != null) {
//                List<DhammaContent> existingAttachments = (List<DhammaContent>) conRepo.findByDhammaVideo(system.getId());
//
//                // Mark existing attachments for deletion
//                for (DhammaContent existingAttachment : existingAttachments) {
//                    // Check if the attachment ID is present in the desclist to deactivate only the specified ones
//                    if (containsAttachmentId(desclist, existingAttachment.getId())) {
//                        existingAttachment.setStatus("deactivate");
//                        conRepo.save(existingAttachment);
//                    }
//                }
//
//                String directoryPath = "E-Learning\\Course\\Attachments";
//                File directory = new File(directoryPath);
//                if (!directory.exists()) {
//                    if (directory.mkdirs()) {
//                        System.out.println("Directory created successfully");
//                    } else {
//                        throw new Exception("Failed to create directory");
//                    }
//                }
//
//                JsonNode fileList = mapper.readTree(desclist);
//                for (int i = 0; i < fileList.size(); i++) {
//                    JsonNode fileItem = fileList.get(i);
//
//                    // Extract file information from the JSON
//                    String fileName = fileItem.get("fileName").asText();
//                    String fileIdentifier = fileItem.get("file").asText();
//
//                    DhammaContent attachment = new DhammaContent();
//                    attachment.setDhammaVideo(system.getId());
//                    attachment.setFile_name(fileName);
//
//                    // Check if file is provided
//                    if (!fileIdentifier.equals("deactivate")) {
//                        // Save the new or updated attachment
//                        String[] split = fileIdentifier.split("\\.");
//                        File des = new File(directory, +system.getId() + "_" + attachment.getId() + "." + split[split.length - 1]);
//                        System.out.println(attachment.getId());
//                        MultipartFile file = files.get(fileIdentifier);
//
//                        // Check if file is not null before transferring
//                        if (file != null) {
//                            // Log the file transfer details
//                            System.out.println("Transferring file: " + file.getOriginalFilename() + " to " + des.getAbsolutePath());
//
//                            // Transfer the file
//                            file.transferTo(Path.of(des.getAbsolutePath()));
//                            file.transferTo(des.toPath());
//                        }
//
//                        attachment.setAtt_path(des.getName());
//
//                        // Set the status to "active" for new attachments
//                        attachment.setStatus("active");
//
//                        conRepo.save(attachment);
//                    }
//                }
//            }
//
//            return videoRepo.save(system);
//        } catch (Exception e) {
//            // Log the exception or handle it appropriately
//            e.printStackTrace();
//            throw new RuntimeException("Failed to update unit with attachments", e);
//        }
//    }
//
//    private boolean containsAttachmentId(String desclist, Integer attachmentId) throws JsonProcessingException {
//        JsonNode fileList = mapper.readTree(desclist);
//        for (int i = 0; i < fileList.size(); i++) {
//            JsonNode fileItem = fileList.get(i);
//            Integer fileId = fileItem.get("fileId").asInt();
//            if (fileId.equals(attachmentId)) {
//                return true;
//            }
//        }
//        return false;
//    }
//    private boolean containsAttachmentId(String desclist, Integer attachmentId) throws JsonProcessingException {
//        try {
//            JsonNode fileList = mapper.readTree(desclist);
//            for (int i = 0; i < fileList.size(); i++) {
//                JsonNode fileItem = fileList.get(i);
//
//                // Check if "fileId" exists in the JSON node and is not null
//                JsonNode fileIdNode = fileItem.get("fileId");
//                if (fileIdNode != null && !fileIdNode.isNull()) {
//                    Integer fileId = fileIdNode.asInt();
//                    if (fileId.equals(attachmentId)) {
//                        return true;
//                    }
//                }
//            }
//        } catch (Exception e) {
//            // Handle the exception or log it
//            e.printStackTrace();
//        }
//        return false;
//    }
}
