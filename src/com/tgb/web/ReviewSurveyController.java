package com.tgb.web;

import com.tgb.dao.ReviewDao;
import com.tgb.dao.SurveyDao;
import com.tgb.entity.Review;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/reviewAndSurvey")
public class ReviewSurveyController {
    @Resource(name = "reviewDaoTR")
    private ReviewDao reviewDao;
    @Resource(name = "surveyDaoTR")
    private SurveyDao surveyDao;

    @ResponseBody
    @RequestMapping(value = "/addReview.do", produces = "application/json")
    public String addReview(HttpServletRequest request) {
        String reviewName = request.getParameter("reviewName");
        String reviewEmail = request.getParameter("reviewEmail");
        String reviewContent = request.getParameter("reviewContent");
        String pName = request.getParameter("pName");
        if (reviewName != null && reviewContent != null && reviewEmail != null && pName != null) {
            Review review = new Review(pName, reviewName, reviewEmail, reviewContent);
            reviewDao.addReview(review);
            return "{\"status\":\"success\"}";
        }
        return "{\"status\":\"fail\"}";
    }

    @ResponseBody
    @RequestMapping(value = "/replySurvey.do", produces = "application/json")
    public String replySurvey(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        if ((Integer) id != null) {
            surveyDao.update(id);
            return "{\"status\":\"success\"}";
        }
        return "{\"status\":\"fail\"}";
    }

    @ResponseBody
    @RequestMapping(value = "/loadReview.do", produces = "application/json;charset=UTF-8")
    public String loadReview(HttpServletRequest request) {
        String pName = request.getParameter("pName");
        Map<String, Object> reMap = new HashMap<String, Object>();
        if (pName != null) {
            List<Review> reList = reviewDao.getByPname(pName);
            reMap.put("count", reList.size());
            reMap.put("reList", reList);
            reMap.put("status", "success");
        } else {
            reMap.put("status", "fail");
        }
        JSONObject jsMap = JSONObject.fromObject(reMap);
        return jsMap.toString();
    }
}
