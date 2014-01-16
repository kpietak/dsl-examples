package org.xtext.example.mydsl.app;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.xtext.example.mydsl.MyDslStandaloneSetupGenerated;
import org.xtext.example.mydsl.myDsl.Answer;
import org.xtext.example.mydsl.myDsl.Model;
import org.xtext.example.mydsl.myDsl.Question;

public class MyDslApp {

	public static void main(String[] args) {
		new MyDslStandaloneSetupGenerated().createInjectorAndDoEMFRegistration();

		ResourceSet rs = new ResourceSetImpl();
		Resource resource = rs.getResource(URI.createURI("./sample.mydsl"), true);
		Model model = (Model)resource.getContents().get(0);
		
		for (Question q : model.getQuestions()) {
			printQuestion(q);
		}
	}

	private static void printQuestion(Question q) {
		
		System.out.println(q.getName());
		for (Answer a : q.getAnswers()) {
			printAnswers(a);
		}
		System.out.println();
	}

	private static void printAnswers(Answer a) {
		
		System.out.println("  " + a.getLogic() + " " + a.getName());
		
	}

}
