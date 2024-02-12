/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bvs.org.repo;

import bvs.org.model.DhammaVideo;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface DhammaVideoRepo extends CrudRepository<DhammaVideo, Integer> {

    Iterable<DhammaVideo> findByStatus(String status);

//    Iterable<DhammaVideo> findByDhammaConetnt(Integer id);
//    List<DhammaVideo> findByUnitAndStatus(Integer id, String status);
}
