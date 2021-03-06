/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.taglibs.standard.lang.jstl;

import org.apache.taglibs.standard.lang.support.ExpressionEvaluator;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;
import java.text.MessageFormat;
import java.util.Map;

/**
 * <p>This is the expression evaluator "adapter" that customizes it
 * for use with the JSP Standard Tag Library.  It uses a
 * VariableResolver implementation that looks up variables from the
 * PageContext and also implements its implicit objects.  It also
 * wraps ELExceptions in JspExceptions that describe the attribute
 * name and value causing the error.
 *
 * @author Nathan Abramson - Art Technology Group
 * @author Shawn Bayern
 */

public class Evaluator
        implements ExpressionEvaluator {
    //-------------------------------------
    // Properties
    //-------------------------------------

    //-------------------------------------
    // Member variables
    //-------------------------------------

    /**
     * The singleton instance of the evaluator *
     */
    static ELEvaluator sEvaluator =
            new ELEvaluator
                    (new JSTLVariableResolver());

    //-------------------------------------
    // ExpressionEvaluator methods
    //-------------------------------------

    /**
     * Parses the given attribute value, then converts it back to a
     * String in its canonical form.
     */
    public static String parseAndRender(String pAttributeValue)
            throws JspException {
        try {
            return sEvaluator.parseAndRender(pAttributeValue);
        } catch (ELException exc) {
            throw new JspException
                    (MessageFormat.format
                            (Constants.ATTRIBUTE_PARSE_EXCEPTION,
                                    "test",
                                    "" + pAttributeValue,
                                    exc.getMessage()));
        }
    }

    //-------------------------------------

    /**
     * Translation time validation of an attribute value.  This method
     * will return a null String if the attribute value is valid;
     * otherwise an error message.
     */
    public String validate(String pAttributeName,
                           String pAttributeValue) {
        try {
            sEvaluator.setBypassCache(true);
            sEvaluator.parseExpressionString(pAttributeValue);
            sEvaluator.setBypassCache(false);
            return null;
        } catch (ELException exc) {
            return
                    MessageFormat.format
                            (Constants.ATTRIBUTE_PARSE_EXCEPTION,
                                    "" + pAttributeName,
                                    "" + pAttributeValue,
                                    exc.getMessage());
        }
    }

    /**
     * Evaluates the expression at request time
     */
    public Object evaluate(String pAttributeName,
                           String pAttributeValue,
                           Class pExpectedType,
                           Tag pTag,
                           PageContext pPageContext,
                           Map functions,
                           String defaultPrefix)
            throws JspException {
        try {
            return sEvaluator.evaluate
                    (pAttributeValue,
                            pPageContext,
                            pExpectedType,
                            functions,
                            defaultPrefix);
        } catch (ELException exc) {
            throw new JspException
                    (MessageFormat.format
                            (Constants.ATTRIBUTE_EVALUATION_EXCEPTION,
                                    "" + pAttributeName,
                                    "" + pAttributeValue,
                                    exc.getMessage(),
                                    exc.getRootCause()), exc.getRootCause());
        }
    }


    //-------------------------------------
    // Testing methods
    //-------------------------------------

    /**
     * Conduit to old-style call for convenience.
     */
    public Object evaluate(String pAttributeName,
                           String pAttributeValue,
                           Class pExpectedType,
                           Tag pTag,
                           PageContext pPageContext)
            throws JspException {
        return evaluate(pAttributeName,
                pAttributeValue,
                pExpectedType,
                pTag,
                pPageContext,
                null,
                null);
    }

    //-------------------------------------

}
