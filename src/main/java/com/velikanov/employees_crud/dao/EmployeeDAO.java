package com.velikanov.employees_crud.dao;

import com.velikanov.employees_crud.entity.Employee;
import java.util.List;

public interface EmployeeDAO {
    List<Employee> getAllEmployees();
    void saveEmployee(Employee employee);
    Employee getEmployee(int id);
    void deleteEmployee(int id);
}
