package stepDefinition;

import static org.testng.Assert.assertEquals;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import Utilities.Base;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;





public class OR1197 extends Base{
	
	WebDriver driver;
	
	
	@Given("^Surgeon navigates to https://dev.ortelligence.com/$")
	
	public void OpenloginPage() throws Exception {
		
		
		try {	
			String url="https://dev.ortelligence.com";
			System.setProperty("webdriver.chrome.driver",".\\Test Data\\chromedriver.exe");
			driver = new ChromeDriver();
			driver.manage().window().maximize();
			driver.manage().deleteAllCookies();
			driver.manage().timeouts().pageLoadTimeout(120, TimeUnit.SECONDS);
			driver.get(url);
			System.out.println("Starting App");
			Thread.sleep(10000);
			Base.FullPageScreenShot("LoginScreen");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@And("^I log into Ortelligence Application$")
	
	public void verifylogin() throws InterruptedException {
		
    driver.findElement(By.xpath("//input[@id='username']")).sendKeys("christiana_superuser@mailinator.com");
    driver.findElement(By.xpath("//input[@id='password']")).sendKeys("ORT@54321");
	WebElement btnContinue=driver.findElement(By.xpath("//button[contains(text(),'Sign On')]"));
	JavascriptExecutor js=(JavascriptExecutor)driver;
	js.executeScript("arguments[0].click();",btnContinue);	
	Thread.sleep(10000);
	String pageTitle=driver.getTitle();
	System.out.println("Home Page Title is :"+pageTitle);
	assertEquals(pageTitle, "ortelligence");	
	}
	
	
	@And ("^I access the surgery screen$")
	
	public void surgeryScreen() {
		
    driver.findElement(By.linkText("ORtelligence")).click();
		
		
	}
	
	@When ("^I see a tray for a procedure&")
	
	public void AllTray() {
		
		String pageTitle=driver.getTitle();
		System.out.println("Home Page Title is :"+pageTitle);
		assertEquals(pageTitle, "ortelligence");
			
	
	}	
	
	@Then ("^I should see checkboxes on the items at the bottom of the screen&")
	
	public void ItemsCheckbox() {
		
		String pageTitle=driver.getTitle();
		System.out.println("Home Page Title is :"+pageTitle);
		assertEquals(pageTitle, "ortelligence");
			
	
	}	
	
	
	
	
}