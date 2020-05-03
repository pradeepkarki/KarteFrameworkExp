package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.*;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

public class TestParallel {

	/*@Test
	void testParallel() {
		Results results = Runner.path("classpath:examples").tags("~@ignore").parallel(5);
		assertEquals(0, results.getFailCount(), results.getErrorMessages());
	}*/
	@Test
	void testParallel() {
		// System.setProperty("karate.env", "demo"); // ensure reset if other tests
		// (e.g. mock) had set env in CI
		Results results = Runner.path("classpath:examples").tags("~@ignore").parallel(5);
		System.out.println("*****************************"+results.getReportDir());
		generateReport(results.getReportDir());
		assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
	}

	public static void generateReport(String karateOutputPath) {
		Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] { "json" }, true);
		List<String> jsonPaths = new ArrayList(jsonFiles.size());
		jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
		Configuration config = new Configuration(new File("target"), "demo");
		ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
		reportBuilder.generateReports();
	}

}
