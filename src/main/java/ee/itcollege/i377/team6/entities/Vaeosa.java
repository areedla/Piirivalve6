package ee.itcollege.i377.team6.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.transaction.annotation.Transactional;


/**
 * The persistent class for the VAEOSA database table.
 * 
 */
@Entity
@RooToString
@RooEntity
public class Vaeosa extends BaseEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="VAEOSA_ID_ID")
	private Long vaeosaIdId;

	@NotNull
	@Size(max = 20)
	private String kood;
	
	@NotNull
	@Size(max = 100)
	private String nimetus;
	
	//bi-directional many-to-one association to RiigiAdminYksus
    @ManyToOne
	@JoinColumn(name="RIIGI_ADMIN_YKSUS_ID")
	private RiigiAdminYksus riigiAdminYksus;

    @NotNull
    @Temporal( TemporalType.DATE)
    @DateTimeFormat(style = "M-")
	private Date alates;

    @NotNull
	@Temporal( TemporalType.DATE)
    @DateTimeFormat(style = "M-")
	private Date kuni;

   
	//bi-directional many-to-one association to PiiriloiguHaldaja
	@OneToMany(mappedBy="vaeosa")
	private Set<PiiriloiguHaldaja> piiriloiguHaldajas;

	//bi-directional many-to-one association to PiiripunktiAlluvus
	@OneToMany(mappedBy="vaeosa")
	private Set<PiiripunktiAlluvus> piiripunktiAlluvuses;


	//bi-directional many-to-one association to VaeosaAlluvus
	@OneToMany(mappedBy="vaeosa1")
	private Set<VaeosaAlluvus> vaeosaAlluvuses1;

	//bi-directional many-to-one association to VaeosaAlluvus
	@OneToMany(mappedBy="vaeosa2")
	private Set<VaeosaAlluvus> vaeosaAlluvuses2;

	//bi-directional many-to-one association to Vahtkond
	@OneToMany(mappedBy="vaeosa")
	private Set<Vahtkond> vahtkonds;

	   @Transactional
	    public void remove() {
	        if (this.entityManager == null) this.entityManager = entityManager();
	        if (this.entityManager.contains(this)) {
	        	 this.setDeleted();
	            this.entityManager.merge(this);
	        } else {
	            Vaeosa attached = Vaeosa.findVaeosa(this.vaeosaIdId);
	            this.setDeleted();
	            this.entityManager.merge(attached);
	        }
	    }
	   
	    public static List<Vaeosa> findAllVaeosas() {
	        return entityManager().createQuery("SELECT o FROM Vaeosa o WHERE suletud ='9999-12-31'", Vaeosa.class).getResultList();
	    }
	    
	    public static Vaeosa findVaeosa(Long vaeosaIdId) {
	        if (vaeosaIdId == null) return null;
	        return entityManager().find(Vaeosa.class, vaeosaIdId);
	    }
	    
	    public static List<Vaeosa> findVaeosaEntries(int firstResult, int maxResults) {
	        return entityManager().createQuery("SELECT o FROM Vaeosa o WHERE suletud ='9999-12-31'", Vaeosa.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
	    }
	
    public Vaeosa() {
    }

	public Long getVaeosaIdId() {
		return this.vaeosaIdId;
	}

	public void setVaeosaIdId(Long vaeosaIdId) {
		this.vaeosaIdId = vaeosaIdId;
	}

	public Date getAlates() {
		return this.alates;
	}

	public void setAlates(Date alates) {
		this.alates = alates;
	}

	

	public String getKood() {
		return this.kood;
	}

	public void setKood(String kood) {
		this.kood = kood;
	}

	public Date getKuni() {
		return this.kuni;
	}

	public void setKuni(Date kuni) {
		this.kuni = kuni;
	}

	
	public String getNimetus() {
		return this.nimetus;
	}

	public void setNimetus(String nimetus) {
		this.nimetus = nimetus;
	}

	public Set<PiiriloiguHaldaja> getPiiriloiguHaldajas() {
		return this.piiriloiguHaldajas;
	}

	public void setPiiriloiguHaldajas(Set<PiiriloiguHaldaja> piiriloiguHaldajas) {
		this.piiriloiguHaldajas = piiriloiguHaldajas;
	}
	
	public Set<PiiripunktiAlluvus> getPiiripunktiAlluvuses() {
		return this.piiripunktiAlluvuses;
	}

	public void setPiiripunktiAlluvuses(Set<PiiripunktiAlluvus> piiripunktiAlluvuses) {
		this.piiripunktiAlluvuses = piiripunktiAlluvuses;
	}
	
	public RiigiAdminYksus getRiigiAdminYksus() {
		return this.riigiAdminYksus;
	}

	public void setRiigiAdminYksus(RiigiAdminYksus riigiAdminYksus) {
		this.riigiAdminYksus = riigiAdminYksus;
	}
	
	public Set<VaeosaAlluvus> getVaeosaAlluvuses1() {
		return this.vaeosaAlluvuses1;
	}

	public void setVaeosaAlluvuses1(Set<VaeosaAlluvus> vaeosaAlluvuses1) {
		this.vaeosaAlluvuses1 = vaeosaAlluvuses1;
	}
	
	public Set<VaeosaAlluvus> getVaeosaAlluvuses2() {
		return this.vaeosaAlluvuses2;
	}

	public void setVaeosaAlluvuses2(Set<VaeosaAlluvus> vaeosaAlluvuses2) {
		this.vaeosaAlluvuses2 = vaeosaAlluvuses2;
	}
	
	public Set<Vahtkond> getVahtkonds() {
		return this.vahtkonds;
	}

	public void setVahtkonds(Set<Vahtkond> vahtkonds) {
		this.vahtkonds = vahtkonds;
	}
	
}
