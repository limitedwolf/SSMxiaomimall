package com.mall.xiaomi.entry;

/**
 * PowerUser
 *
 * @author monsterwolf
 * @date 2022/6/11 22:17
 * @description
 */
public class PowerUser {
    private Integer id;
    private String username;
    private String password;

    @Override
    public String toString() {
        return "PowerUser{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public PowerUser() {
    }

    public PowerUser(Integer id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
