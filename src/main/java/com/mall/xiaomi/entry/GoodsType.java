package com.mall.xiaomi.entry;

public class GoodsType {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_type.id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_type.name
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_type.pid
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Integer pid;

    public GoodsType() {
    }

    @Override
    public String toString() {
        return "GoodsType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pid=" + pid +
                '}';
    }

    public GoodsType(Integer id, String name, Integer pid) {
        this.id = id;
        this.name = name;
        this.pid = pid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_type.id
     *
     * @return the value of goods_type.id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_type.id
     *
     * @param id the value for goods_type.id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_type.name
     *
     * @return the value of goods_type.name
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_type.name
     *
     * @param name the value for goods_type.name
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }
}