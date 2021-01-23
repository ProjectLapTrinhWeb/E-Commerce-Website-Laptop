package vn.edu.nlu.Beans;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class  LoadData {
    public static List<Product> loadFile(String url){
        List<Product> rs = new ArrayList<Product>();
        StringBuilder data = new StringBuilder();
        try {
          BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(url),"utf-8"));
          String line;
          while((line = br.readLine())!=null) {
              StringTokenizer token = new StringTokenizer(line.toString(), ",");
              String id = null;
              int countId = 1;
              long rate = (long) 0.9;
              while (token.hasMoreTokens()) {
                  id = (countId++) + "";
                  String name = token.nextToken();
                  String urlImage = token.nextToken();
                  String price = token.nextToken();
                  String priceSale = price;
//                  rs.add(new Product(id,name,urlImage,price,priceSale));
              }
          }
          br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return rs;
    }
}
