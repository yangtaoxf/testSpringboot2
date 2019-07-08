package com.wxy.wjl.testspringboot2.mapper;

import com.wxy.wjl.testspringboot2.domain.Bill;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BillMapper {
    Bill getBill(String jrnNo);
    List<Bill> getAll();
    Bill getBillByNo(int no);
    int add(Bill bill);
}
