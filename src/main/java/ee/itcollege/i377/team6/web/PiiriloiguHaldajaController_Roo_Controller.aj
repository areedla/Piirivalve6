// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team6.web;

import ee.itcollege.i377.team6.entities.PiiriloiguHaldaja;
import ee.itcollege.i377.team6.entities.Piiriloik;
import ee.itcollege.i377.team6.entities.Piiripunkt;
import ee.itcollege.i377.team6.entities.Vaeosa;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PiiriloiguHaldajaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String PiiriloiguHaldajaController.create(@Valid PiiriloiguHaldaja piiriloiguHaldaja, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("piiriloiguHaldaja", piiriloiguHaldaja);
            addDateTimeFormatPatterns(uiModel);
            return "piiriloiguhaldajas/create";
        }
        uiModel.asMap().clear();
        piiriloiguHaldaja.persist();
        return "redirect:/piiriloiguhaldajas/" + encodeUrlPathSegment(piiriloiguHaldaja.getPiiriloiguHaldajaId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String PiiriloiguHaldajaController.createForm(Model uiModel) {
        uiModel.addAttribute("piiriloiguHaldaja", new PiiriloiguHaldaja());
        addDateTimeFormatPatterns(uiModel);
        return "piiriloiguhaldajas/create";
    }
    
    @RequestMapping(value = "/{piiriloiguHaldajaId}", method = RequestMethod.GET)
    public String PiiriloiguHaldajaController.show(@PathVariable("piiriloiguHaldajaId") Long piiriloiguHaldajaId, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("piiriloiguhaldaja", PiiriloiguHaldaja.findPiiriloiguHaldaja(piiriloiguHaldajaId));
        uiModel.addAttribute("itemId", piiriloiguHaldajaId);
        return "piiriloiguhaldajas/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String PiiriloiguHaldajaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("piiriloiguhaldajas", PiiriloiguHaldaja.findPiiriloiguHaldajaEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) PiiriloiguHaldaja.countPiiriloiguHaldajas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("piiriloiguhaldajas", PiiriloiguHaldaja.findAllPiiriloiguHaldajas());
        }
        addDateTimeFormatPatterns(uiModel);
        return "piiriloiguhaldajas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String PiiriloiguHaldajaController.update(@Valid PiiriloiguHaldaja piiriloiguHaldaja, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("piiriloiguHaldaja", piiriloiguHaldaja);
            addDateTimeFormatPatterns(uiModel);
            return "piiriloiguhaldajas/update";
        }
        uiModel.asMap().clear();
        piiriloiguHaldaja.merge();
        return "redirect:/piiriloiguhaldajas/" + encodeUrlPathSegment(piiriloiguHaldaja.getPiiriloiguHaldajaId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{piiriloiguHaldajaId}", params = "form", method = RequestMethod.GET)
    public String PiiriloiguHaldajaController.updateForm(@PathVariable("piiriloiguHaldajaId") Long piiriloiguHaldajaId, Model uiModel) {
        uiModel.addAttribute("piiriloiguHaldaja", PiiriloiguHaldaja.findPiiriloiguHaldaja(piiriloiguHaldajaId));
        addDateTimeFormatPatterns(uiModel);
        return "piiriloiguhaldajas/update";
    }
    
    @RequestMapping(value = "/{piiriloiguHaldajaId}", method = RequestMethod.DELETE)
    public String PiiriloiguHaldajaController.delete(@PathVariable("piiriloiguHaldajaId") Long piiriloiguHaldajaId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PiiriloiguHaldaja.findPiiriloiguHaldaja(piiriloiguHaldajaId).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/piiriloiguhaldajas";
    }
    
    @ModelAttribute("piiriloiguhaldajas")
    public Collection<PiiriloiguHaldaja> PiiriloiguHaldajaController.populatePiiriloiguHaldajas() {
        return PiiriloiguHaldaja.findAllPiiriloiguHaldajas();
    }
    
    @ModelAttribute("piiriloiks")
    public Collection<Piiriloik> PiiriloiguHaldajaController.populatePiiriloiks() {
        return Piiriloik.findAllPiiriloiks();
    }
    
    @ModelAttribute("piiripunkts")
    public Collection<Piiripunkt> PiiriloiguHaldajaController.populatePiiripunkts() {
        return Piiripunkt.findAllPiiripunkts();
    }
    
    @ModelAttribute("vaeosas")
    public Collection<Vaeosa> PiiriloiguHaldajaController.populateVaeosas() {
        return Vaeosa.findAllVaeosas();
    }
    
    void PiiriloiguHaldajaController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("piiriloiguHaldaja_alates_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("piiriloiguHaldaja_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("piiriloiguHaldaja_kuni_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("piiriloiguHaldaja_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("piiriloiguHaldaja_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String PiiriloiguHaldajaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
