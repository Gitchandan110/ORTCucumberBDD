package Utilities;

import java.io.File;
import java.util.NoSuchElementException;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.mongodb.MapReduceCommand.OutputType;

public class Utils {

	public WebDriver driver;

	private WebDriver driver() {
		driver = new ChromeDriver();
		return null;
	}

	public String getPageTitle() {

		try {

			driver().getTitle();

		} catch (Exception e) {

			System.out.println("Unable to find page title");
		}
		return null;

	}

	public static void highLightElement(WebDriver driver, WebElement element) {
		JavascriptExecutor js = (JavascriptExecutor) driver;

		js.executeScript("arguments[0].setAttribute('style', 'background: yellow; border: 2px solid red;');", element);

		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {

			System.out.println(e.getMessage());
		}

		js.executeScript("arguments[0].setAttribute('style','border: solid 2px white');", element);

	}

	boolean flag = true;

	public boolean typetext(WebElement element, String fieldvalue) {

		try {
			if (element != null && fieldvalue != null) {
				element.clear();
				element.click();
				element.sendKeys(fieldvalue);
				flag = true;

			} else {

				flag = false;
			}

		} catch (Exception ex) {
			System.out.println("Exception in typetext is:=" + ex.getMessage());
		}

		System.out.println("flag status is:= " + flag);
		return flag;

	}


	
	public static void typeText(WebElement textbox, String text) {

		try {

			if (textbox != null && text != null) {

				textbox.clear();
				textbox.click();
				textbox.sendKeys(text);

			} else {

				System.out.println("Unable to type text");

			}

		} catch (Exception ex) {

			System.out.println("Exception occured :" + ex.getMessage());

		}
	}

	public static void elementFound(WebElement element) {

		try {

			if (element != null && element.isDisplayed() == true) {

				System.out.println("elementFound pass : " + element.getText());

			} else {

				System.out.println("elementFound Fail " + element.getText());

			}

		} catch (Exception ex) {

			System.out.println("Exception in elementFound :" + ex.getMessage());

		}

	}


	public static boolean StackTraceElement() {

		System.out.println("line number: ");
		for (int i = 0; i < 2; i++)
			System.out.println(Thread.currentThread().getStackTrace()[i].getLineNumber());
		return true;

	}

}
