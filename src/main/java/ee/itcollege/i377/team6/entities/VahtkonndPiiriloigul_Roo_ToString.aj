// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team6.entities;

import java.lang.String;

privileged aspect VahtkonndPiiriloigul_Roo_ToString {
    
    public String VahtkonndPiiriloigul.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Alates: ").append(getAlates()).append(", ");
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud() == null ? "null" : getAvatud().getTime()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Kuni: ").append(getKuni()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud() == null ? "null" : getMuudetud().getTime()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("Piiriloik: ").append(getPiiriloik()).append(", ");
        sb.append("Suletud: ").append(getSuletud() == null ? "null" : getSuletud().getTime()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("Vahtkond: ").append(getVahtkond()).append(", ");
        sb.append("VahtkondPiiriloiulId: ").append(getVahtkondPiiriloiulId());
        return sb.toString();
    }
    
}
