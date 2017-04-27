package com.tgb.web;

import com.tgb.entity.OrderCard;
import com.tgb.manager.OrdersManager;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Objects;

@Controller
@RequestMapping("/cart")
public class SimpleCartController {

    @Resource(name = "ordersManager")
    private OrdersManager ordersManager;

    @ResponseBody
    @RequestMapping(value = "/saveOrder.do", produces = "text/json; charset=UTF-8")
    public String saveOrder(HttpServletRequest request) {
        String orderData = request.getParameter("order");
        JSONObject orderObj = JSONObject.fromObject(orderData);
        JSONArray orderArray = orderObj.getJSONArray("data");
        int checked = 0;
        int userId = Integer.parseInt(request.getParameter("userId"));
        for (Object obj : orderArray) {
            JSONObject js = (JSONObject) obj;
            String name = js.getString("name");
            int quantity = js.getInt("quantity");
            float price = js.getLong("price");
            String tableName = js.getString("table");
            String image = js.getString("image");
            OrderCard orderCard = new OrderCard(name, quantity, checked, price, tableName, image, userId);
            ordersManager.addOrder(orderCard, userId);
        }
        return "{\"status\":\"success\"}";
    }

    @ResponseBody
    @RequestMapping(value = "/emptyOrder.do", produces = "text/json; charset=UTF-8")
    public String emptyOrder(HttpServletRequest request) throws Exception {
        String user = request.getParameter("userId");
        if (!Objects.equals(user, ""))
            if (null != user) {
                int userId = Integer.parseInt(user);
                int excute = ordersManager.emptyOrder(userId);
                return "{\"status\":\"success\"}";
            }
        return "{\"status\":\"fail\"}";
    }

}
