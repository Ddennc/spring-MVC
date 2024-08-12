package com.denysdudka.spring.mvc;
import com.denysdudka.spring.mvc.validation.CheckEmail;
import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

@Getter
@Setter
public class Employee {
    @Size(min = 2,message = "name must be min. 2 symbols")
    private String name;
    @NotBlank(message = "surname is required")
    private String surname;
    @Min(value = 500, message = "must be greater than 499")
    @Max(value = 1000, message = "must be less than 1001")
    private int salary;
    private String department;
    private Map<String,String> departments;
    private  String carBrand;
    private Map<String,String> carBrands;
    private String[] languages;
    private Map<String ,String> languageList;
    @Pattern(regexp = "\\d{3}-\\d{2}-\\d{2}", message = "please use pattern xxx-xx-xx")
    private String phoneNumber;
    @CheckEmail(value = "abc.com",message = "email must ends with abc.com")
    private String email;

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", salary=" + salary +
                ", department='" + department + '\'' +
                '}';
    }

    public Employee() {
        departments = new HashMap<>();
    departments.put("Infornation Technologie","IT");
    departments.put("Human Resources","HR");
    departments.put("Sales","Sales");
    carBrands = new HashMap<>();
    carBrands.put("BMW","BMW");
    carBrands.put("Mercedes","Mercedes");
    carBrands.put("Audi","Audi");
    languageList = new HashMap<>();
    languageList.put("English","EN");
    languageList.put("Deutch","DE");
    languageList.put("French","FR");
    
    }


}

