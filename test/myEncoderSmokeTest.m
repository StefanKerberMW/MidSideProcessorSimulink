testfile = fullfile('myEncoderSmokeTest.mldatx');

import matlab.unittest.TestSuite
suite = testsuite(testfile);

import matlab.unittest.TestRunner
smkTstRunner = TestRunner.withNoPlugins;

import matlab.unittest.plugins.TestReportPlugin

pdfFile = 'myEncoderSmokeTestReport.pdf';
trp = TestReportPlugin.producingPDF(pdfFile);
addPlugin(smkTstRunner,trp)

result = run(smkTstRunner,suite);
