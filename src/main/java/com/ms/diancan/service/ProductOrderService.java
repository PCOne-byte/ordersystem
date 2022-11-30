package com.ms.diancan.service;

import com.ms.diancan.entity.ProductOrder;

import java.util.List;


public interface ProductOrderService {

    List<ProductOrder> listAllByOrderId(String orderId);
}
