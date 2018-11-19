package com.vogella.maven.quickstart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class Rpx {
	
	public static Map<String, Integer> getStatstics(String key,Integer value){	
	Map<String, Integer> objMap = new HashMap<String, Integer>();
    objMap.put("PLAINTIFF", 0 );
    objMap.put("DEFENDANTS", 0);
    objMap.put("ACCUSED PRODUCTS", 0);
    objMap.put("PATENT IN SUIT", 0);
    objMap.put("DOCKET ENTRIES", 0 );
    objMap.put("DAYS IN LITIGATION", 0 );
   
    
    for(Map.Entry<String, Integer> entry: objMap.entrySet()) {
        key = entry.getKey();
         value = entry.getValue();
        
        System.out.println(key + ": " + value);
    }
	return objMap;
		
		
}
	
public static void main(String[] args) throws InterruptedException {
		
		

		System.setProperty("webdriver.chrome.driver", "C:\\Users\\Thirumamagal\\Downloads\\chromedriver_win32\\chromedriver.exe");

		// Initialize browser
		WebDriver driver = new ChromeDriver();

		driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
		driver.get("https://qa-insight.rpxcorp.com/");

		// Maximize browser

		driver.manage().window().maximize();

		Thread.sleep(2000);
		WebElement navelement = driver.findElement(By.xpath("//*[@id=\"primary-nav\"]/div/div/div/a/i"));
		navelement.click();
		
		driver.findElement(By.name("user[email]")).clear();
		driver.findElement(By.name("user[email]")).sendKeys("auto_member@rpxcorp.com");
		
		driver.findElement(By.name("user[password]")).clear();
		driver.findElement(By.name("user[password]")).sendKeys("Welcome1");
		
		driver.findElement(By.name("commit")).click();
		
		Thread.sleep(2000);
		driver.findElement(By.xpath("//*[@id=\"container\"]/div[2]/div[3]/div/div[2]/div/a")).click();

//	 driver.findElement(By.xpath("//*[@id=\"content\"]/div/div[4]/div/div[1]/div[1]/ul/li[1]/a"));
//	
//		List<WebElement> pro= driver.findElements(By.xpath("//*[@id=\"content\"]/div/div[4]/div/div[1]/div[1]/ul/li[1]/a"));		
//		System.out.println(pro);
//		
//		driver.findElement(By.xpath("//*[@id=\"content\"]/div/div[4]/div/div[1]/div[1]/ul/li[1]/a"));
//		WebElement plaintiff = driver.findElement(By.xpath("//*[@id=\\\"content\\\"]/div/div[4]/div/div[1]/div[1]/ul/li[1]/a"));
//		
//		driver.findElement(By.cssSelector(".big-stats li a[href='#plaintiff'] .count")).getText();
//		driver.findElement(By.cssSelector(".big-stats li a[href='#defendants'] .count")).getText();
//		driver.findElement(By.cssSelector(".big-stats li a.count")).getText();
//		driver.findElement(By.cssSelector(".big-stats li a[href='#patent information'] .count")).getText();
//		driver.findElement(By.cssSelector(".big-stats li a[href='#docket entries sections'] .count")).getText();
//		driver.findElement(By.cssSelector(".big-stats li a.count")).getText();
//		

		String plaintiffCount = driver.findElement(By.cssSelector(".big-stats li:contains(Plaintiff) .count")).getText();
				
		System.out.println(plaintiffCount);
//	    Thread.sleep(3000);
//	    List<WebElement> allOptions= ul.findElements(By.tagName("li"));
//	    for(WebElement selectLi: allOptions)
//	    {
//	    	{
//	    		selectLi.getText();
//	        }
//	    
//	    }
//		
//	    WebElement ul= driver.findElement(By.cssSelector(".big-stats"));
//	    Thread.sleep(3000);
//	    List<WebElement> allOptions= ul.findElements(By.tagName("li"));
//	    for(WebElement selectLi: allOptions)
//	    {
//	    	{
//	    		selectLi.getText();
//	    		
//	        }
	    
//	    }
		
		
		
}

}
