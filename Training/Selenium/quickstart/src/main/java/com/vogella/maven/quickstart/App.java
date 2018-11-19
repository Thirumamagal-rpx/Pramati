package com.vogella.maven.quickstart;

import java.util.concurrent.TimeUnit;

import java.nio.charset.Charset;
import java.util.Random;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
/**
 * Hello world!
 *
 */
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Hello world!
 *
 */
public class App 
{
	
	public static String generateRandomStringWithAlph(int count) {
		String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		
		StringBuilder builder = new StringBuilder();
		while (count-- != 0) {
		int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
		builder.append(ALPHA_NUMERIC_STRING.charAt(character));
		}
		return "UserName"+builder.toString().toLowerCase();
	}
	
	public static String generateRandomString() {
		 byte[] array = new byte[7]; // length is bounded by 7
		    new Random().nextBytes(array);
		    String generatedString = new String(array, Charset.forName("UTF-"));
		 
		    System.out.println("RandomString : "+generatedString);
			return generatedString;
	}
public static void main(String[] args) throws InterruptedException {
		
		

		System.setProperty("webdriver.chrome.driver", "C:\\Users\\Thirumamagal\\Downloads\\chromedriver_win32\\chromedriver.exe");

		// Initialize browser
		WebDriver driver = new ChromeDriver();

		driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
		driver.get("http://www.freecrm.com");

		// Maximize browser

		driver.manage().window().maximize();

		Thread.sleep(2000);

		WebElement navelement = driver.findElement(By.xpath("(//*[text()='Sign Up'])[1]"));

		navelement.click();

		Select dropdown = new Select(driver.findElement(By.id("payment_plan_id")));
		dropdown.selectByVisibleText("Free Edition");

		driver.findElement(By.name("first_name")).clear();
		driver.findElement(By.name("first_name")).sendKeys("Thiruma");

		driver.findElement(By.name("surname")).clear();
		driver.findElement(By.name("surname")).sendKeys("Sri");

		driver.findElement(By.name("email")).clear();
		driver.findElement(By.name("email")).sendKeys("thiruma@gmail.com");

		driver.findElement(By.name("email_confirm")).clear();
		driver.findElement(By.name("email_confirm")).sendKeys("thiruma@gmail.com");
			

		driver.findElement(By.name("username")).clear();
		WebElement userna = driver.findElement(By.name("username"));
		String DynamicUserName = generateRandomStringWithAlph(3);
		userna.sendKeys(DynamicUserName);
		
		driver.findElement(By.name("password")).clear();
		WebElement pass = driver.findElement(By.name("password"));
		String DynamicPassword = generateRandomStringWithAlph(3);
		pass.sendKeys(DynamicPassword);

		driver.findElement(By.name("passwordconfirm")).clear();
		driver.findElement(By.name("passwordconfirm")).sendKeys(DynamicPassword);
	
		
		driver.findElement(By.name("agreeTerms")).click();

		driver.findElement(By.name("submitButton")).click();

		driver.findElement(By.name("company_name")).clear();
		driver.findElement(By.name("company_name")).sendKeys("Pramathi");

		driver.findElement(By.id("phone")).clear();
		driver.findElement(By.id("phone")).sendKeys("9962868405");

		driver.findElement(By.id("fax")).clear();
		driver.findElement(By.id("fax")).sendKeys("9962868405");

		driver.findElement(By.name("website")).clear();
		driver.findElement(By.name("website")).sendKeys("pramathi.com");

		driver.findElement(By.name("company_email")).clear();
		driver.findElement(By.name("company_email")).sendKeys("thiruma@gmail.com");

		driver.findElement(By.name("service")).clear();
		driver.findElement(By.name("service")).sendKeys("-----"); //// description

		driver.findElement(By.name("address")).clear();
		driver.findElement(By.name("address")).sendKeys(" 7, Old Mahabalipuram Rd, Industrial Estate, Perungudi ");

		driver.findElement(By.name("city")).clear();
		driver.findElement(By.name("city")).sendKeys("Chennai");

		driver.findElement(By.name("state")).clear();
		driver.findElement(By.name("state")).sendKeys("Tamil Nadu");

		driver.findElement(By.name("postcode")).clear();
		driver.findElement(By.name("postcode")).sendKeys("600096");

		Select dropdown1 = new Select(driver.findElement(By.name("country")));
		dropdown1.selectByVisibleText("India");

		driver.findElement(By.name("copy_address")).click();

		driver.findElement(By.name("btnSubmit")).click();

		driver.findElement(By.name("first_name")).clear();
		driver.findElement(By.name("first_name")).sendKeys("sri");

		driver.findElement(By.name("surname")).clear();
		driver.findElement(By.name("surname")).sendKeys("ma");

		driver.findElement(By.name("email")).clear();
		driver.findElement(By.name("email")).sendKeys("sri@gmail.com");

		driver.findElement(By.name("email_confirm")).clear();
		driver.findElement(By.name("email_confirm")).sendKeys("sri@gmail.com");

		driver.findElement(By.name("username")).clear();
		WebElement userna1 = driver.findElement(By.name("username"));
		userna1.sendKeys("sriram");
		// System.out.println(By.name("username"));

		driver.findElement(By.name("password")).clear();
		WebElement pass1 = driver.findElement(By.name("password"));
		pass1.sendKeys("plm@123");
		// System.out.println(By.name("password"));

		driver.findElement(By.name("passwordconfirm")).clear();
		driver.findElement(By.name("passwordconfirm")).sendKeys("plm@123");

		Select dropdown2 = new Select(driver.findElement(By.name("role_id")));
		dropdown2.selectByVisibleText("User");

		driver.findElement(By.name("finish")).click();

		// String tagName = "";
		// tagName = driver.findElement(By.name("username")).getTagName();
		// System.out.println(tagName);
		// driver.close();
		// System.exit(0);

		// boolean isdisplayedflag = navelement.isDisplayed();
		// if(isdisplayedflag) {
		// System.out.println("Test Passed");
		// }else {
		// System.out.println("Test Passed");
		// }
}
}