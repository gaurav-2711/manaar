package cms.manaar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WidgetsController {
    @RequestMapping("/widgets")
    public String widgets() {
        return "widgets";
    }

    @RequestMapping("/widgets/widgetFeatured")
    public String widgetFeaturedProject() {
        return "widget-Featured-Project";
    }

    @RequestMapping("/widgets/widgetImpactfulInvestments")
    public String widgetImpactfulInvestments() {
        return "widget-Impactful-investments";
    }
    @RequestMapping("/widgets/widgetKeyInsights")
    public String widgetKeyInsights() {
        return "widget-key-insights";
    }

    @RequestMapping("/widgets/widgetMenaExpansion")
    public String widgetMENAExpansion() {
        return "widget-MENA-Expansion";
    }

    @RequestMapping("/widgets/widgetNumbers")
    public String widgetNumbers() {
        return "widget-numbers";
    }
    @RequestMapping("/widgets/widgetSection02")
    public String widgetSection() {
        return "widget-section-02";
    }

}
