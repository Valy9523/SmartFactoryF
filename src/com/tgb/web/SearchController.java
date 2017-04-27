package com.tgb.web;

import com.tgb.entity.Build_mater;
import com.tgb.entity.Elec_device;
import com.tgb.entity.Fine_parts;
import com.tgb.entity.Heav_mach;
import com.tgb.manager.BuildMaterManager;
import com.tgb.manager.ElecDeviceManager;
import com.tgb.manager.FinePartsManager;
import com.tgb.manager.HeavMachManager;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/search")
public class SearchController {

    @Resource(name = "elecDeviceManager")
    private ElecDeviceManager elecDeviceManager;

    @Resource(name = "buildMaterManager")
    private BuildMaterManager buildMaterManager;

    @Resource(name = "heavMachManager")
    private HeavMachManager heavMachManager;

    @Resource(name = "finePartsManager")
    private FinePartsManager finePartsManager;

    @ResponseBody
    @RequestMapping(value = "/homeProduct.do", produces = "text/json; charset=UTF-8")
    public String homeProduct(HttpServletRequest request) {
        JSONObject jsonObject = JSONObject.fromObject(createHomeList());
        String rs = jsonObject.toString();
        return rs;
    }

    @RequestMapping(value = "/searchCommon.do")
    public ModelAndView search(HttpServletRequest request) {
        String table = request.getParameter("table");
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("name", name);
        map.put("type", type);
        map.put("table", table);
        return new ModelAndView("/" + table, map);
    }

    @RequestMapping(value = "/allSearch.do")
    public ModelAndView allSearch(HttpServletRequest request) {
        String name = request.getParameter("name");
        String table = null;

        Map<String, Object> map = new HashMap<>();

        if (elecDeviceManager.getAllElecDevice(name).size() > 0) {
            table = "elec_device";
        }
        if (buildMaterManager.getAllBuildMater(name).size() > 0) {
            table = "build_mater";
        }
        if (heavMachManager.getAllHeavMach(name).size() > 0) {
            table = "heav_mach";
        }
        if (finePartsManager.getAllFineParts(name).size() > 0) {
            table = "fine_parts";
        }
        if (table == null) {
            map.put("search", "fail");
            return new ModelAndView("/home", map);
        }
        map.put("table", table);
        map.put("name", name);
        return new ModelAndView("/" + table, map);
    }

    @ResponseBody
    @RequestMapping(value = "/getSelect.do", produces = "text/json; charset=UTF-8")
    public String getSelect(HttpServletRequest request) {

        int page = Integer.parseInt(request.getParameter("page"));

        String table = request.getParameter("table");

        String type = request.getParameter("type");

        String name = request.getParameter("name");

        String sorder = request.getParameter("order");

        JSONObject jsonMap = JSONObject.fromObject(selectTable(table, type, page, name, sorder));

        return jsonMap.toString();
    }

    @RequestMapping(value = "/detail.do")
    public ModelAndView getDetail(HttpServletRequest request) {
        String table = request.getParameter("table");

        String name = request.getParameter("name");

        Map<String, Object> eMap = new HashMap<>();

        Object rs = null;


        switch (table) {
            case "elec_device":
                rs = (Elec_device) elecDeviceManager.getElecDevice(name);
                break;
            case "build_mater":
                rs = (Build_mater) buildMaterManager.getBuildMater(name);
                break;
            case "heav_mach":
                rs = (Heav_mach) heavMachManager.getHeavMach(name);
                break;
            case "fine_parts":
                rs = (Fine_parts) finePartsManager.getFineParts(name);
                break;
        }
        eMap.put("rs", rs);
        eMap.put("table", table);

        return new ModelAndView("/detail", eMap);

    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    private Map createHomeList() {
        List eList = elecDeviceManager.getByDate(),
                eList2 = elecDeviceManager.getSpecial(),
                eList3 = elecDeviceManager.getByDate2(),
                bList = buildMaterManager.getByDate(),
                bList3 = buildMaterManager.getByDate2(),
                bList2 = buildMaterManager.getSpecial(),
                hList = heavMachManager.getByDate(),
                hList3 = heavMachManager.getByDate2(),
                hList2 = heavMachManager.getSpecial(),
                fList = finePartsManager.getByDate(),
                fList3 = finePartsManager.getByDate2(),
                fList2 = finePartsManager.getSpecial();
        Map<String, Object> map;
        map = new HashMap<String, Object>();
        hList.addAll(fList);
        bList.addAll(hList);
        eList.addAll(bList);
        hList2.addAll(fList2);
        bList2.addAll(hList2);
        eList2.addAll(bList2);
        hList3.addAll(fList3);
        bList3.addAll(hList3);
        eList3.addAll(bList3);
        map.put("eList", eList);
        map.put("eList2", eList2);
        map.put("eList3", eList3);
        return map;
    }

    @SuppressWarnings("rawtypes")
    private Map selectTable(String table, String type, int page, String name, String sorder) {

        int order = 1;

        if (sorder != null) {
            order = Integer.parseInt(sorder);
        }

        Object list = null;

        int total = 0;

        switch (table) {
            case "elec_device":
                total = elecDeviceManager.getCount(type, name);

                list = (List<Elec_device>) elecDeviceManager.getSelect(page, order, type, name);
                break;
            case "build_mater":
                total = buildMaterManager.getCount(type, name);
                list = (List<Build_mater>) buildMaterManager.getSelect(page, order, type, name);
                break;
            case "heav_mach":
                total = heavMachManager.getCount(name);
                list = (List<Heav_mach>) heavMachManager.getSelect(page, name);
                break;
            case "fine_parts":
                total = finePartsManager.getCount(name);
                list = (List<Fine_parts>) finePartsManager.getSelect(page, name);
                break;
        }
        Map<String, Object> map;
        map = new HashMap<String, Object>();

        map.put("total", total);

        map.put("rs", list);

        return map;

    }
}
