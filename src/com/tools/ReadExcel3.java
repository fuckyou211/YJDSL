package com.tools;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.pojo.Problemm;
//������
public class ReadExcel3 {
	 //������
    private int totalRows = 0;  
    //������
    private int totalCells = 0; 
    //������Ϣ������
    private String errorMsg;
    //���췽��
    public ReadExcel3(){}
    //��ȡ������
    public int getTotalRows()  { return totalRows;} 
    //��ȡ������
    public int getTotalCells() {  return totalCells;} 
    //��ȡ������Ϣ
    public String getErrorInfo() { return errorMsg; }  
    
  /**
   * ��֤EXCEL�ļ�
   * @param filePath
   * @return
   */
  public boolean validateExcel(String filePath){
        if (filePath == null || !(WDWUtil.isExcel2003(filePath) || WDWUtil.isExcel2007(filePath))){  
            errorMsg = "�ļ�������excel��ʽ";  
            return false;  
        }  
        return true;
  }
    
  /**
   * ��EXCEL�ļ�����ȡ�ͻ���Ϣ����
   * @param fielName
   * @return
   */
  public List<Problemm> getExcelInfo(String fileName,MultipartFile Mfile){
      
      //��spring�ļ��ϴ���MultipartFileת����CommonsMultipartFile����
       CommonsMultipartFile cf= (CommonsMultipartFile)Mfile; //��ȡ���ش洢·��
       File file = new  File("C:\\Users\\alex\\Desktop");
       //����һ��Ŀ¼ ������·�����ɵ�ǰ File ����ָ����������һ����ĸ�·������
       if (!file.exists()) file.mkdirs();
       //�½�һ���ļ�
       File file1 = new File("C:\\Users\\alex\\Desktop" + new Date().getTime() + ".xlsx"); 
       //���ϴ����ļ�д���½����ļ���
       try {
           cf.getFileItem().write(file1); 
       } catch (Exception e) {
           e.printStackTrace();
       }
       
       //��ʼ���ͻ���Ϣ�ļ���    
       List<Problemm> list=new ArrayList<Problemm>();
       //��ʼ��������
       InputStream is = null;  
       try{
          //��֤�ļ����Ƿ�ϸ�
          if(!validateExcel(fileName)){
              return null;
          }
          //�����ļ����ж��ļ���2003�汾����2007�汾
          boolean isExcel2003 = true; 
          if(WDWUtil.isExcel2007(fileName)){
        	  isExcel2003 = false;  
          }
          //�����½����ļ�ʵ����������
          is = new FileInputStream(file1);
          //����excel��������ݶ�ȡ�ͻ���Ϣ
          list = getExcelInfo(is, isExcel2003); 
          is.close();
      }catch(Exception e){
          e.printStackTrace();
      } finally{
          if(is !=null)
          {
              try{
                  is.close();
              }catch(IOException e){
                  is = null;    
                  e.printStackTrace();  
              }
          }
      }
      return list;
  }
  /**
   * ����excel��������ݶ�ȡ�ͻ���Ϣ
   * @param is ������
   * @param isExcel2003 excel��2003����2007�汾
   * @return
   * @throws IOException
   */
  public  List<Problemm> getExcelInfo(InputStream is,boolean isExcel2003){
       List<Problemm> list=null;
       try{
           /** ���ݰ汾ѡ�񴴽�Workbook�ķ�ʽ */
           Workbook wb = null;
           //��excel��2003ʱ
           if(isExcel2003){
               wb = new HSSFWorkbook(is); 
           }
           else{//��excel��2007ʱ
               wb = new XSSFWorkbook(is); 
           }
           //��ȡExcel����ͻ�����Ϣ
           list=readExcelValue(wb);
       }
       catch (IOException e)  {  
           e.printStackTrace();  
       }  
       return list;
  }
  /**
   * ��ȡExcel����ͻ�����Ϣ
   * @param wb
   * @return
   */
  private List<Problemm> readExcelValue(Workbook wb){ 
      //�õ���һ��shell  
       Sheet sheet=wb.getSheetAt(0);
       
      //�õ�Excel������
       this.totalRows=sheet.getPhysicalNumberOfRows();
       
      //�õ�Excel������(ǰ����������)
       if(totalRows>=1 && sheet.getRow(0) != null){
            this.totalCells=sheet.getRow(0).getPhysicalNumberOfCells();
       }
       
       List<Problemm> list=new ArrayList<Problemm>();
       Problemm problemm;            
      //ѭ��Excel����,�ӵڶ��п�ʼ�����ⲻ���
       for(int r=0;r<totalRows;r++){
           Row row = sheet.getRow(r);
           if (row == null) continue;
           problemm = new Problemm();
           
           //ѭ��Excel����
           for(int c = 0; c <=this.totalCells; c++){    
               Cell cell = row.getCell(c);
               if (null != cell){
                   if(c==0){//��һ�в���
                   }else if(c==1){
                	   problemm.setMtype(cell.getStringCellValue());//�ͻ�����
                	   System.out.println(cell.getStringCellValue());
                   }else if(c==2){
                	   problemm.setMque(cell.getStringCellValue());//�ͻ����
                	   System.out.println(cell.getStringCellValue());
                   }else if(c==3){
                	   problemm.setMans(cell.getStringCellValue());//�ͻ���Դ
                	   System.out.println(cell.getStringCellValue());
                   }
               }
           }
           //���ӿͻ�
           list.add(problemm);
       }
       return list;
  }
}