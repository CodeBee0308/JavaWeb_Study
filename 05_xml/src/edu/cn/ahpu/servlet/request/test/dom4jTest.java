package edu.cn.ahpu.servlet.request.test;

import edu.cn.ahpu.servlet.request.pojo.Book;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.junit.Test;

import java.util.List;

public class dom4jTest {

    @Test
    public void testdom4j() throws Exception {

        //创建一个SaxReader输入流，去读取 xml配置文件，生成Document对象
        SAXReader saxReader = new SAXReader();
        Document document = saxReader.read("src/books.xml");

        // 获取根标签
        Element rootElement = document.getRootElement();
        // 获取book标签
        List<Element> books = rootElement.elements("book");

        for (Element book : books){
            // asXML():把标签对象转化成标签字符串 ；
            //System.out.println(Book.asXML());

            String snValue = book.attributeValue("sn");
            Element nameElement = book.element("name");
            // getText()：获取标签中的文本内容
            String nameTest = nameElement.getText();
            String priceTest = book.elementText("price");
            String authorTest = book.elementText("author");

            System.out.println(new Book(snValue,nameTest,Double.parseDouble(priceTest),authorTest));
        }
    }
}

