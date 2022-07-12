package com.mall.xiaomi.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.entry.GoodsImages;
import com.mall.xiaomi.service.GoodsImageService;
import com.mall.xiaomi.utils.PageResult;
import com.mall.xiaomi.utils.QueryPageBean;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;


@RestController
@RequestMapping("/backendgoodsimages")
public class BackendGoodsImagesController {

    @Autowired
    public GoodsImageService goodsImageService;


    /**
     * 分页方法
     * @param queryPageBean 包含当前页，页大小和查询条件
     * @return 总页数和分页结果
     */
    @RequestMapping("/findPage.do")
    public PageResult findPage(@RequestBody QueryPageBean queryPageBean){

        // 当前页，和每页大小
        Page<GoodsImages> goodsImagesPage = new Page<>(queryPageBean.getCurrentPage(), queryPageBean.getPageSize());
        // 如果有搜索条件,则搜索
        IPage<GoodsImages> goodsImagesIPage = goodsImageService.selectGoodsImagesPage(goodsImagesPage, queryPageBean.getQueryString());
        // 当前页记录
        List<GoodsImages> records = goodsImagesIPage.getRecords();
        // 总页数
        Long totoal = goodsImagesIPage.getTotal();
        // 返回当前记录和总页数给前台
        return new PageResult(totoal,records);
    }

    /**
     * 商品图片增加
     * @param goodsImages 商品类别
     * @return 增加成功与否的结果
     */
    @RequestMapping("/addItem.do")
    public ResponseMessage add(@RequestBody GoodsImages goodsImages){
        System.out.println("商品图片增加:此时的信息:"+goodsImages);
        try{
            goodsImageService.add(goodsImages);
        }
        catch (Exception e){
            return ResponseMessage.error();
        }
        return ResponseMessage.success();
    }

    /**
     * 编辑商品图片
     * @param goodsImages 要修改的商品
     * @return 编辑结果
     */
    @RequestMapping("/editItem.do")
    public ResponseMessage editItem(@RequestBody GoodsImages goodsImages){
        try{
            goodsImageService.editItem(goodsImages);
        }
        catch (Exception e){
            return ResponseMessage.error();
        }
        return  ResponseMessage.success();
    }

    /**
     * 删除要删除的商品类型
     * @param id 商品类型ID
     * @return 删除结果
     */
    @RequestMapping("/deleteItem.do")
    public ResponseMessage deleteItem(Integer id){
        try{
            goodsImageService.deleteItem(id);
        }
        catch (Exception e){
            return ResponseMessage.error();
        }
        return  ResponseMessage.success();
    }

    /**
     * 保存图片方法
     * @return 保存结果
     */
    @RequestMapping("/saveImage.do")
    public ResponseMessage saveImages(@RequestParam  MultipartFile imgFile, HttpServletRequest request) throws IOException {
        String pathroot = request.getSession().getServletContext().getRealPath("");
        String path="";
        if(!imgFile.isEmpty()){
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-","");
            //获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType=imgFile.getContentType();
            //获得文件后缀名称
            String imageName=contentType.substring(contentType.indexOf("/")+1);
            path="/images/"+uuid+"."+imageName;
            imgFile.transferTo(new File(pathroot+path));
            System.out.println(path);
            request.setAttribute("imagesPath", path);
            return ResponseMessage.success().addObject("imagesPath", path);
        }
        else{
            return ResponseMessage.error();
        }
    }


}
