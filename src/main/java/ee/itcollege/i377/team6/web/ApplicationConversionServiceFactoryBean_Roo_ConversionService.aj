// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team6.web;

import ee.itcollege.i377.team6.entities.PiiriloiguHaldaja;
import ee.itcollege.i377.team6.entities.Piiriloik;
import ee.itcollege.i377.team6.entities.Piiripunkt;
import ee.itcollege.i377.team6.entities.PiiripunktiAlluvus;
import ee.itcollege.i377.team6.entities.RiigiAdminYksus;
import ee.itcollege.i377.team6.entities.Vaeosa;
import ee.itcollege.i377.team6.entities.VaeosaAlluvus;
import ee.itcollege.i377.team6.entities.Vahtkond;
import ee.itcollege.i377.team6.entities.VahtkonndPiiriloigul;
import java.lang.String;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(new PiiriloiguHaldajaConverter());
        registry.addConverter(new PiiriloikConverter());
        registry.addConverter(new PiiripunktConverter());
        registry.addConverter(new PiiripunktiAlluvusConverter());
        registry.addConverter(new RiigiAdminYksusConverter());
        registry.addConverter(new VaeosaConverter());
        registry.addConverter(new VaeosaAlluvusConverter());
        registry.addConverter(new VahtkondConverter());
        registry.addConverter(new VahtkonndPiiriloigulConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
    static class ee.itcollege.i377.team6.web.ApplicationConversionServiceFactoryBean.PiiriloiguHaldajaConverter implements Converter<PiiriloiguHaldaja, String> {
        public String convert(PiiriloiguHaldaja piiriloiguHaldaja) {
            return new StringBuilder().append(piiriloiguHaldaja.getKommentaar()).append(" ").append(piiriloiguHaldaja.getAvaja()).append(" ").append(piiriloiguHaldaja.getAvatud()).append(" ").append(piiriloiguHaldaja.getMuutja()).toString();
        }
        
    }
    
    static class ee.itcollege.i377.team6.web.ApplicationConversionServiceFactoryBean.PiiriloikConverter implements Converter<Piiriloik, String> {
        public String convert(Piiriloik piiriloik) {
            return new StringBuilder().append(piiriloik.getKommentaar()).append(" ").append(piiriloik.getAvaja()).append(" ").append(piiriloik.getAvatud()).append(" ").append(piiriloik.getMuutja()).toString();
        }
        
    }
    
    static class ee.itcollege.i377.team6.web.ApplicationConversionServiceFactoryBean.PiiripunktConverter implements Converter<Piiripunkt, String> {
        public String convert(Piiripunkt piiripunkt) {
            return new StringBuilder().append(piiripunkt.getKommentaar()).append(" ").append(piiripunkt.getAvaja()).append(" ").append(piiripunkt.getAvatud()).append(" ").append(piiripunkt.getMuutja()).toString();
        }
        
    }
    
    static class ee.itcollege.i377.team6.web.ApplicationConversionServiceFactoryBean.PiiripunktiAlluvusConverter implements Converter<PiiripunktiAlluvus, String> {
        public String convert(PiiripunktiAlluvus piiripunktiAlluvus) {
            return new StringBuilder().append(piiripunktiAlluvus.getKommentaar()).append(" ").append(piiripunktiAlluvus.getAvaja()).append(" ").append(piiripunktiAlluvus.getAvatud()).append(" ").append(piiripunktiAlluvus.getMuutja()).toString();
        }
        
    }
    
    static class ee.itcollege.i377.team6.web.ApplicationConversionServiceFactoryBean.RiigiAdminYksusConverter implements Converter<RiigiAdminYksus, String> {
        public String convert(RiigiAdminYksus riigiAdminYksus) {
            return new StringBuilder().append(riigiAdminYksus.getKommentaar()).append(" ").append(riigiAdminYksus.getAvaja()).append(" ").append(riigiAdminYksus.getAvatud()).append(" ").append(riigiAdminYksus.getMuutja()).toString();
        }
        
    }
    
    static class ee.itcollege.i377.team6.web.ApplicationConversionServiceFactoryBean.VaeosaConverter implements Converter<Vaeosa, String> {
        public String convert(Vaeosa vaeosa) {
            return new StringBuilder().append(vaeosa.getKommentaar()).append(" ").append(vaeosa.getAvaja()).append(" ").append(vaeosa.getAvatud()).append(" ").append(vaeosa.getMuutja()).toString();
        }
        
    }
    
    static class ee.itcollege.i377.team6.web.ApplicationConversionServiceFactoryBean.VaeosaAlluvusConverter implements Converter<VaeosaAlluvus, String> {
        public String convert(VaeosaAlluvus vaeosaAlluvus) {
            return new StringBuilder().append(vaeosaAlluvus.getKommentaar()).append(" ").append(vaeosaAlluvus.getAvaja()).append(" ").append(vaeosaAlluvus.getAvatud()).append(" ").append(vaeosaAlluvus.getMuutja()).toString();
        }
        
    }
    
    static class ee.itcollege.i377.team6.web.ApplicationConversionServiceFactoryBean.VahtkondConverter implements Converter<Vahtkond, String> {
        public String convert(Vahtkond vahtkond) {
            return new StringBuilder().append(vahtkond.getKommentaar()).append(" ").append(vahtkond.getAvaja()).append(" ").append(vahtkond.getAvatud()).append(" ").append(vahtkond.getMuutja()).toString();
        }
        
    }
    
    static class ee.itcollege.i377.team6.web.ApplicationConversionServiceFactoryBean.VahtkonndPiiriloigulConverter implements Converter<VahtkonndPiiriloigul, String> {
        public String convert(VahtkonndPiiriloigul vahtkonndPiiriloigul) {
            return new StringBuilder().append(vahtkonndPiiriloigul.getKommentaar()).append(" ").append(vahtkonndPiiriloigul.getAvaja()).append(" ").append(vahtkonndPiiriloigul.getAvatud()).append(" ").append(vahtkonndPiiriloigul.getMuutja()).toString();
        }
        
    }
    
}
