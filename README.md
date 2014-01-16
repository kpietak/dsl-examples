Examples of DSLs
================

Examples of simple DSLs which present how to create them using different tools. 


Xtext
-----
A `xtext` projects presents a vary simple domain-specific language for testing (drilling) apps. It utlize [Xtext][1] to populate a test with a set of questions and answers. Than the application interprets a semantic model (ie. questions with answers) to start a test (in the current version, questions are only written in sysout.

The sample test is shown below:
<pre>
1. "Ile wynosi pow. Bieszczadzkiego PN?" {
	- "28533 ha"
	+ "292,02 km2"
	- "28238 ha"
	- "2435 ha"
}

2. "W którym roku został utworzony BPN?" {
	- "1973"
	- "1972"
	- "1988"
	+ "1949"
}

3. "Ile km wynosi długość szlaków w BPN?" {
	- "206 km"
	- "210 km"
	+ "307 km"
	- "106 km"
}
</pre>


  [1]: http://www.eclipse.org/Xtext/index.html "Xtext's Home Page"
