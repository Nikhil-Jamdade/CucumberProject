package stepdefs;

import java.util.Map;
import org.junit.Assert;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class NewCalculatorStepDef {
	
	Map<String, Integer> prices;
	int totalBill=0;
	
	@Given("I want to buy below items")
	public void i_want_to_buy_below_items(Map<String, Integer> priceList) {
		this.prices = priceList;
	}

	@When("I purchase them")
	public void i_purchase_them() {
		// Write code here that turns the phrase above into concrete actions
			for(String key: prices.keySet()) {
				totalBill = totalBill + prices.get(key);
			}
	}

	@Then("I should get bill amount as {int}")
	public void i_should_get_bill_amount_as(int expResult) {
		// Write code here that turns the phrase above into concrete actions
			Assert.assertEquals(expResult, totalBill);
	}
	
	@Given("I want to buy below items in given quantity")
	public void i_wabt_to_buy_below_items_in_given_quantity(io.cucumber.datatable.DataTable dataTable) {
		
		int rows = dataTable.height();
		
		for(int i=0;i<rows;i++) {
			String item = dataTable.cell(i, 0);
			int qty = Integer.parseInt(dataTable.cell(i, 1));
			int val = Integer.parseInt(dataTable.cell(i, 2));
			totalBill = totalBill + (qty*val);
		}
	}
		
}
