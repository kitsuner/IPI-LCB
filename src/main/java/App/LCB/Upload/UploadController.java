package App.LCB.Upload;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/data")
public class UploadController {

    @Autowired
    DataRepository dataRepository;

    @PostMapping(value = "", consumes = "multipart/form-data")
    @ResponseBody
    public String post(@RequestParam("fileData") MultipartFile file) throws IOException {
        String uuid = UUID.randomUUID()+"-"+System.currentTimeMillis();
        Data d = new Data();
        d.setId(uuid);
        d.setData(file.getBytes());
        d.setDataType(file.getContentType());
        dataRepository.save(d);
        return uuid;
    }

    @GetMapping(value="{id}")
    @ResponseBody
    public ResponseEntity<byte[]> get(@PathVariable("id") String id){
        Data d = dataRepository.findById(id).get();

        return ResponseEntity
                    .ok()
                    .header("Content-Type",d.getDataType())
                    .header("Content-Disposition","inline")
                    .body(d.getData());

    }
}