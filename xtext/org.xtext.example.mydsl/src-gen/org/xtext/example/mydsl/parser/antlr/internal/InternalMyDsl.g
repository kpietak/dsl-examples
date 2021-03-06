/*
* generated by Xtext
*/
grammar InternalMyDsl;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.xtext.example.mydsl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

}

@parser::members {

 	private MyDslGrammarAccess grammarAccess;
 	
    public InternalMyDslParser(TokenStream input, MyDslGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Model";	
   	}
   	
   	@Override
   	protected MyDslGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	 iv_ruleModel=ruleModel 
	 { $current=$iv_ruleModel.current; } 
	 EOF 
;

// Rule Model
ruleModel returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getModelAccess().getQuestionsQuestionParserRuleCall_0()); 
	    }
		lv_questions_0_0=ruleQuestion		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModelRule());
	        }
       		add(
       			$current, 
       			"questions",
        		lv_questions_0_0, 
        		"Question");
	        afterParserOrEnumRuleCall();
	    }

)
)*
;





// Entry rule entryRuleQuestion
entryRuleQuestion returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getQuestionRule()); }
	 iv_ruleQuestion=ruleQuestion 
	 { $current=$iv_ruleQuestion.current; } 
	 EOF 
;

// Rule Question
ruleQuestion returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(this_INT_0=RULE_INT
    { 
    newLeafNode(this_INT_0, grammarAccess.getQuestionAccess().getINTTerminalRuleCall_0()); 
    }
	otherlv_1='.' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getQuestionAccess().getFullStopKeyword_1());
    }
(
(
		lv_name_2_0=RULE_STRING
		{
			newLeafNode(lv_name_2_0, grammarAccess.getQuestionAccess().getNameSTRINGTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getQuestionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"STRING");
	    }

)
)	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getQuestionAccess().getLeftCurlyBracketKeyword_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getQuestionAccess().getAnswersAnswerParserRuleCall_4_0()); 
	    }
		lv_answers_4_0=ruleAnswer		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getQuestionRule());
	        }
       		add(
       			$current, 
       			"answers",
        		lv_answers_4_0, 
        		"Answer");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_5='}' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getQuestionAccess().getRightCurlyBracketKeyword_5());
    }
)
;





// Entry rule entryRuleAnswer
entryRuleAnswer returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAnswerRule()); }
	 iv_ruleAnswer=ruleAnswer 
	 { $current=$iv_ruleAnswer.current; } 
	 EOF 
;

// Rule Answer
ruleAnswer returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getAnswerAccess().getLogicLOGICParserRuleCall_0_0()); 
	    }
		lv_logic_0_0=ruleLOGIC		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAnswerRule());
	        }
       		set(
       			$current, 
       			"logic",
        		lv_logic_0_0, 
        		"LOGIC");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		lv_name_1_0=RULE_STRING
		{
			newLeafNode(lv_name_1_0, grammarAccess.getAnswerAccess().getNameSTRINGTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAnswerRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"STRING");
	    }

)
))
;





// Entry rule entryRuleLOGIC
entryRuleLOGIC returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getLOGICRule()); } 
	 iv_ruleLOGIC=ruleLOGIC 
	 { $current=$iv_ruleLOGIC.current.getText(); }  
	 EOF 
;

// Rule LOGIC
ruleLOGIC returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='+' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getLOGICAccess().getPlusSignKeyword_0()); 
    }

    |
	kw='-' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getLOGICAccess().getHyphenMinusKeyword_1()); 
    }
)
    ;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


