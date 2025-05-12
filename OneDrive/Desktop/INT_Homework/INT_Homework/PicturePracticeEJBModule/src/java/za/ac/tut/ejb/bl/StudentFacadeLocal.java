/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.ejb.bl;

import jakarta.ejb.Local;
import java.util.List;
import za.ac.tut.entities.Student;

/**
 *
 * @author Sakhumzi
 */
@Local
public interface StudentFacadeLocal {

    void create(Student student);

    void edit(Student student);

    void remove(Student student);

    Student find(Object id);

    List<Student> findAll();

    List<Student> findRange(int[] range);

    int count();
    
    void createStudent(Student student);
    void editStudent(Student studnet);
    void removeStudent(Student student);
    List<Student> findAllStudent();
    
    Student find(String name, String surname);
    Long cntAllMaleStudents();
    Long cntAllFemaleStudents();
    Long cntAllPassedStudents();
    Long cntAllFailedStudents();
    Long cntAllPassedMaleStudents();
    Long cntAllPassedFemaleStudents();
    Long cntAllFailedMaleStudents();
    Long cntAllFailedFemaleStudents();
    List<Student> findStudentsWithinAgeRange(Integer minAge, Integer maxAge);
    Double getHighestMark();
    Double getLowestMark();
    Double getAvgMark();
    
}
