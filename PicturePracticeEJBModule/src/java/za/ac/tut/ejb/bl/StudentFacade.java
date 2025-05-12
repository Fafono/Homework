/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.ejb.bl;

import jakarta.annotation.security.PermitAll;
import jakarta.annotation.security.RolesAllowed;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import java.util.List;
import za.ac.tut.entities.Student;

/**
 *
 * @author Sakhumzi
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "PicturePracticeEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }

    @Override
    @RolesAllowed("teacher")
    public Student find(String name, String surname) {
        Query query = em.createQuery("SELECT s FROM Student s WHERE s.name = :fname AND s.surname = :lname");
        query.setParameter("fname", name);
        query.setParameter("lname", surname);
        Student student = (Student)query.getSingleResult();
        return student;
    }

    @Override
    public Long cntAllMaleStudents() {
        Query query = em.createQuery("SELECT count(s) FROM Student s WHERE s.gender = 'M'");
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }

    @Override
    public Long cntAllFemaleStudents() {
        Query query = em.createQuery("SELECT count(s) FROM Student s WHERE s.gender = 'F'");
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }

    @Override
    public Long cntAllPassedStudents() {
        Query query = em.createQuery("SELECT count(s) FROM Student s WHERE s.percMarkObtained >= 50");
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }
    @Override
    public Long cntAllFailedStudents() {
        Query query = em.createQuery("SELECT count(s) FROM Student s WHERE s.percMarkObtained < 50");
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }

    @Override
    public Long cntAllPassedMaleStudents() {
        Query query = em.createQuery("SELECT count(s) FROM Student s WHERE s.gender = 'M' AND s.percMarkObtained >= 50");
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }

    @Override
    public Long cntAllPassedFemaleStudents() {
        Query query = em.createQuery("SELECT count(s) FROM Student s WHERE s.gender = 'F' AND s.percMarkObtained >= 50");
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }

    @Override
    public Long cntAllFailedMaleStudents() {
        Query query = em.createQuery("SELECT count(s) FROM Student s WHERE s.gender = 'M' AND s.percMarkObtained < 50");
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }

    @Override
    public Long cntAllFailedFemaleStudents() {
        Query query = em.createQuery("SELECT count(s) FROM Student s WHERE s.gender = 'F' AND s.percMarkObtained < 50");
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }

    @Override
    @RolesAllowed("teacher")
    public List<Student> findStudentsWithinAgeRange(Integer minAge, Integer maxAge) {
        Query query = em.createQuery("SELECT s FROM Student s WHERE s.age >= :firstAge AND s.age <= :lastAge");
        query.setParameter("lastAge", maxAge);
        query.setParameter("firstAge", minAge);
        List<Student> student = (List<Student>)query.getResultList();
        return student;
    }

    @Override
    public Double getHighestMark() {
        Query query = em.createQuery("SELECT MAX(s.percMarkObtained) FROM Student s");
        Double highest = (Double)query.getSingleResult();
        return highest;
    }

    @Override
    public Double getLowestMark() {
        Query query = em.createQuery("SELECT MIN(s.percMarkObtained) FROM Student s");
        Double lowest = (Double)query.getSingleResult();
        return lowest;
    }

    @Override
    public Double getAvgMark() {
        Query query = em.createQuery("SELECT AVG(s.percMarkObtained) FROM Student s");
        Double average = (Double)query.getSingleResult();
        return average;
    }

    @Override
    @RolesAllowed("teacher")
    public void createStudent(Student student) {
        create(student);
    }

    @Override
    @RolesAllowed("teacher")
    public void editStudent(Student studnet) {
        edit(studnet);
    }

    @Override
    @RolesAllowed("teacher")
    public void removeStudent(Student student) {
        remove(student);
    }

    @Override
    @RolesAllowed({"teacher","student"})
    public List<Student> findAllStudent() {
        List<Student> list = findAll();
        return list;
    }
    
}
