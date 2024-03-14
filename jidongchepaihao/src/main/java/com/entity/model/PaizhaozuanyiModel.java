package com.entity.model;

import com.entity.PaizhaozuanyiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 牌照转移申请
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class PaizhaozuanyiModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 车辆
     */
    private Integer cheliangId;


    /**
     * 用户
     */
    private Integer yonghuId;


    /**
     * 转移用户名称
     */
    private String paizhaozuanyiName;


    /**
     * 牌照
     */
    private String paizhaozuanyiPaizhao;


    /**
     * 申请状态
     */
    private Integer paizhaozuanyiYesnoTypes;


    /**
     * 申请结果
     */
    private String paizhaozuanyiYesnoText;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：车辆
	 */
    public Integer getCheliangId() {
        return cheliangId;
    }


    /**
	 * 设置：车辆
	 */
    public void setCheliangId(Integer cheliangId) {
        this.cheliangId = cheliangId;
    }
    /**
	 * 获取：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 设置：用户
	 */
    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：转移用户名称
	 */
    public String getPaizhaozuanyiName() {
        return paizhaozuanyiName;
    }


    /**
	 * 设置：转移用户名称
	 */
    public void setPaizhaozuanyiName(String paizhaozuanyiName) {
        this.paizhaozuanyiName = paizhaozuanyiName;
    }
    /**
	 * 获取：牌照
	 */
    public String getPaizhaozuanyiPaizhao() {
        return paizhaozuanyiPaizhao;
    }


    /**
	 * 设置：牌照
	 */
    public void setPaizhaozuanyiPaizhao(String paizhaozuanyiPaizhao) {
        this.paizhaozuanyiPaizhao = paizhaozuanyiPaizhao;
    }
    /**
	 * 获取：申请状态
	 */
    public Integer getPaizhaozuanyiYesnoTypes() {
        return paizhaozuanyiYesnoTypes;
    }


    /**
	 * 设置：申请状态
	 */
    public void setPaizhaozuanyiYesnoTypes(Integer paizhaozuanyiYesnoTypes) {
        this.paizhaozuanyiYesnoTypes = paizhaozuanyiYesnoTypes;
    }
    /**
	 * 获取：申请结果
	 */
    public String getPaizhaozuanyiYesnoText() {
        return paizhaozuanyiYesnoText;
    }


    /**
	 * 设置：申请结果
	 */
    public void setPaizhaozuanyiYesnoText(String paizhaozuanyiYesnoText) {
        this.paizhaozuanyiYesnoText = paizhaozuanyiYesnoText;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
