/**
 */
package org.xtext.example.mydsl.myDsl;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.xtext.example.mydsl.myDsl.Model#getQuestions <em>Questions</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.xtext.example.mydsl.myDsl.MyDslPackage#getModel()
 * @model
 * @generated
 */
public interface Model extends EObject
{
  /**
   * Returns the value of the '<em><b>Questions</b></em>' containment reference list.
   * The list contents are of type {@link org.xtext.example.mydsl.myDsl.Question}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Questions</em>' containment reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Questions</em>' containment reference list.
   * @see org.xtext.example.mydsl.myDsl.MyDslPackage#getModel_Questions()
   * @model containment="true"
   * @generated
   */
  EList<Question> getQuestions();

} // Model
