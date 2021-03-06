//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.0-b26-ea3 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2010.05.18 at 03:48:27 PM EEST 
//


package xmltv.generated;

import javax.annotation.Generated;
import javax.xml.bind.annotation.*;
import javax.xml.bind.annotation.adapters.NormalizedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import java.util.ArrayList;
import java.util.List;


/**
 * 
 */
@XmlAccessorType(AccessType.FIELD)
@XmlType(name = "", propOrder = {
    "title",
    "subTitle",
    "desc",
    "credits",
    "date",
    "category",
    "language",
    "origLanguage",
    "length",
    "icon",
    "url",
    "country",
    "episodeNum",
    "video",
    "audio",
    "previouslyShown",
    "premiere",
    "lastChance",
    "_new",
    "subtitles",
    "rating",
    "starRating",
    "review"
})
@XmlRootElement(name = "programme")
@Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
public class Programme {

    @XmlAttribute(required = true)
    @XmlJavaTypeAdapter(NormalizedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected String start;
    @XmlAttribute
    @XmlJavaTypeAdapter(NormalizedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected String stop;
    @XmlAttribute(name = "pdc-start")
    @XmlJavaTypeAdapter(NormalizedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected String pdcStart;
    @XmlAttribute(name = "vps-start")
    @XmlJavaTypeAdapter(NormalizedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected String vpsStart;
    @XmlAttribute
    @XmlJavaTypeAdapter(NormalizedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected String showview;
    @XmlAttribute
    @XmlJavaTypeAdapter(NormalizedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected String videoplus;
    @XmlAttribute(required = true)
    @XmlJavaTypeAdapter(NormalizedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected String channel;
    @XmlAttribute
    @XmlJavaTypeAdapter(NormalizedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected String clumpidx;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<Title> title;
    @XmlElement(name = "sub-title")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<SubTitle> subTitle;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<Desc> desc;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected Credits credits;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected String date;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<Category> category;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected Language language;
    @XmlElement(name = "orig-language")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected OrigLanguage origLanguage;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected Length length;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<Icon> icon;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<Url> url;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<Country> country;
    @XmlElement(name = "episode-num")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<EpisodeNum> episodeNum;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected Video video;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected Audio audio;
    @XmlElement(name = "previously-shown")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected PreviouslyShown previouslyShown;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected Premiere premiere;
    @XmlElement(name = "last-chance")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected LastChance lastChance;
    @XmlElement(name = "new")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected New _new;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<Subtitles> subtitles;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<Rating> rating;
    @XmlElement(name = "star-rating")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<StarRating> starRating;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    protected List<Review> review;

    /**
     * Gets the value of the start property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public String getStart() {
        return start;
    }

    /**
     * Sets the value of the start property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setStart(String value) {
        this.start = value;
    }

    /**
     * Gets the value of the stop property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public String getStop() {
        return stop;
    }

    /**
     * Sets the value of the stop property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setStop(String value) {
        this.stop = value;
    }

    /**
     * Gets the value of the pdcStart property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public String getPdcStart() {
        return pdcStart;
    }

    /**
     * Sets the value of the pdcStart property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setPdcStart(String value) {
        this.pdcStart = value;
    }

    /**
     * Gets the value of the vpsStart property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public String getVpsStart() {
        return vpsStart;
    }

    /**
     * Sets the value of the vpsStart property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setVpsStart(String value) {
        this.vpsStart = value;
    }

    /**
     * Gets the value of the showview property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public String getShowview() {
        return showview;
    }

    /**
     * Sets the value of the showview property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setShowview(String value) {
        this.showview = value;
    }

    /**
     * Gets the value of the videoplus property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public String getVideoplus() {
        return videoplus;
    }

    /**
     * Sets the value of the videoplus property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setVideoplus(String value) {
        this.videoplus = value;
    }

    /**
     * Gets the value of the channel property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public String getChannel() {
        return channel;
    }

    /**
     * Sets the value of the channel property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setChannel(String value) {
        this.channel = value;
    }

    /**
     * Gets the value of the clumpidx property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public String getClumpidx() {
        if (clumpidx == null) {
            return "0/1";
        } else {
            return clumpidx;
        }
    }

    /**
     * Sets the value of the clumpidx property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setClumpidx(String value) {
        this.clumpidx = value;
    }

    /**
     * Gets the value of the title property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the title property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getTitle().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Title }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<Title> getTitle() {
        if (title == null) {
            title = new ArrayList<Title>();
        }
        return this.title;
    }

    /**
     * Gets the value of the subTitle property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the subTitle property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getSubTitle().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link SubTitle }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<SubTitle> getSubTitle() {
        if (subTitle == null) {
            subTitle = new ArrayList<SubTitle>();
        }
        return this.subTitle;
    }

    /**
     * Gets the value of the desc property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the desc property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getDesc().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Desc }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<Desc> getDesc() {
        if (desc == null) {
            desc = new ArrayList<Desc>();
        }
        return this.desc;
    }

    /**
     * Gets the value of the credits property.
     * 
     * @return
     *     possible object is
     *     {@link Credits }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public Credits getCredits() {
        return credits;
    }

    /**
     * Sets the value of the credits property.
     * 
     * @param value
     *     allowed object is
     *     {@link Credits }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setCredits(Credits value) {
        this.credits = value;
    }

    /**
     * Gets the value of the date property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public String getDate() {
        return date;
    }

    /**
     * Sets the value of the date property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setDate(String value) {
        this.date = value;
    }

    /**
     * Gets the value of the category property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the category property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getCategory().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Category }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<Category> getCategory() {
        if (category == null) {
            category = new ArrayList<Category>();
        }
        return this.category;
    }

    /**
     * Gets the value of the language property.
     * 
     * @return
     *     possible object is
     *     {@link Language }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public Language getLanguage() {
        return language;
    }

    /**
     * Sets the value of the language property.
     * 
     * @param value
     *     allowed object is
     *     {@link Language }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setLanguage(Language value) {
        this.language = value;
    }

    /**
     * Gets the value of the origLanguage property.
     * 
     * @return
     *     possible object is
     *     {@link OrigLanguage }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public OrigLanguage getOrigLanguage() {
        return origLanguage;
    }

    /**
     * Sets the value of the origLanguage property.
     * 
     * @param value
     *     allowed object is
     *     {@link OrigLanguage }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setOrigLanguage(OrigLanguage value) {
        this.origLanguage = value;
    }

    /**
     * Gets the value of the length property.
     * 
     * @return
     *     possible object is
     *     {@link Length }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public Length getLength() {
        return length;
    }

    /**
     * Sets the value of the length property.
     * 
     * @param value
     *     allowed object is
     *     {@link Length }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setLength(Length value) {
        this.length = value;
    }

    /**
     * Gets the value of the icon property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the icon property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getIcon().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Icon }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<Icon> getIcon() {
        if (icon == null) {
            icon = new ArrayList<Icon>();
        }
        return this.icon;
    }

    /**
     * Gets the value of the url property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the url property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getUrl().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Url }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<Url> getUrl() {
        if (url == null) {
            url = new ArrayList<Url>();
        }
        return this.url;
    }

    /**
     * Gets the value of the country property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the country property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getCountry().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Country }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<Country> getCountry() {
        if (country == null) {
            country = new ArrayList<Country>();
        }
        return this.country;
    }

    /**
     * Gets the value of the episodeNum property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the episodeNum property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getEpisodeNum().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link EpisodeNum }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<EpisodeNum> getEpisodeNum() {
        if (episodeNum == null) {
            episodeNum = new ArrayList<EpisodeNum>();
        }
        return this.episodeNum;
    }

    /**
     * Gets the value of the video property.
     * 
     * @return
     *     possible object is
     *     {@link Video }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public Video getVideo() {
        return video;
    }

    /**
     * Sets the value of the video property.
     * 
     * @param value
     *     allowed object is
     *     {@link Video }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setVideo(Video value) {
        this.video = value;
    }

    /**
     * Gets the value of the audio property.
     * 
     * @return
     *     possible object is
     *     {@link Audio }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public Audio getAudio() {
        return audio;
    }

    /**
     * Sets the value of the audio property.
     * 
     * @param value
     *     allowed object is
     *     {@link Audio }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setAudio(Audio value) {
        this.audio = value;
    }

    /**
     * Gets the value of the previouslyShown property.
     * 
     * @return
     *     possible object is
     *     {@link PreviouslyShown }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public PreviouslyShown getPreviouslyShown() {
        return previouslyShown;
    }

    /**
     * Sets the value of the previouslyShown property.
     * 
     * @param value
     *     allowed object is
     *     {@link PreviouslyShown }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setPreviouslyShown(PreviouslyShown value) {
        this.previouslyShown = value;
    }

    /**
     * Gets the value of the premiere property.
     * 
     * @return
     *     possible object is
     *     {@link Premiere }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public Premiere getPremiere() {
        return premiere;
    }

    /**
     * Sets the value of the premiere property.
     * 
     * @param value
     *     allowed object is
     *     {@link Premiere }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setPremiere(Premiere value) {
        this.premiere = value;
    }

    /**
     * Gets the value of the lastChance property.
     * 
     * @return
     *     possible object is
     *     {@link LastChance }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public LastChance getLastChance() {
        return lastChance;
    }

    /**
     * Sets the value of the lastChance property.
     * 
     * @param value
     *     allowed object is
     *     {@link LastChance }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setLastChance(LastChance value) {
        this.lastChance = value;
    }

    /**
     * Gets the value of the new property.
     * 
     * @return
     *     possible object is
     *     {@link New }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public New getNew() {
        return _new;
    }

    /**
     * Sets the value of the new property.
     * 
     * @param value
     *     allowed object is
     *     {@link New }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public void setNew(New value) {
        this._new = value;
    }

    /**
     * Gets the value of the subtitles property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the subtitles property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getSubtitles().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Subtitles }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<Subtitles> getSubtitles() {
        if (subtitles == null) {
            subtitles = new ArrayList<Subtitles>();
        }
        return this.subtitles;
    }

    /**
     * Gets the value of the rating property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the rating property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getRating().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Rating }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<Rating> getRating() {
        if (rating == null) {
            rating = new ArrayList<Rating>();
        }
        return this.rating;
    }

    /**
     * Gets the value of the starRating property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the starRating property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getStarRating().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link StarRating }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<StarRating> getStarRating() {
        if (starRating == null) {
            starRating = new ArrayList<StarRating>();
        }
        return this.starRating;
    }

    /**
     * Gets the value of the review property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the review property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getReview().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Review }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2010-05-18T03:48:27+03:00", comments = "JAXB RI v2.0-b26-ea3")
    public List<Review> getReview() {
        if (review == null) {
            review = new ArrayList<Review>();
        }
        return this.review;
    }

}
