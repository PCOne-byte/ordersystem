package com.ms.diancan.mapper;

import com.ms.diancan.entity.ProductOrder;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface ProductOrderMapper {

    List<ProductOrder> listAllByOrderId(String orderId);

}
