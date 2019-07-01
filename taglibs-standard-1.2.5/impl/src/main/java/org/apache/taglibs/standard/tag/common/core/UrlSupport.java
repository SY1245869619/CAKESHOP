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

package org.apache.taglibs.standard.tag.common.core;

import org.apache.taglibs.standard.resources.Resources;
import org.apache.taglibs.standard.util.UrlUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * <p>Support for tag handlers for &lt;url&gt;, the URL creation
 * and rewriting tag in JSTL 1.0.</p>
 *
 * @author Shawn Bayern
 */

public abstract class UrlSupport extends BodyTagSupport
        implements ParamParent {

    //*********************************************************************
    // Protected state

    protected String value;                      // 'value' attribute
    protected String context;             // 'context' attribute

    //*********************************************************************
    // Private state

    private String var;                          // 'var' attribute
    private int scope;                 // processed 'scope' attr
    private ParamSupport.ParamManager params;     // added parameters

    //*********************************************************************
    // Constructor and initialization

    public UrlSupport() {
        super();
        init();
    }

    public static String resolveUrl(
            String url, String context, PageContext pageContext)
            throws JspException {
        // don't touch absolute URLs
        if (UrlUtil.isAbsoluteUrl(url)) {
            return url;
        }

        // normalize relative URLs against a context root
        HttpServletRequest request =
                (HttpServletRequest) pageContext.getRequest();
        if (context == null) {
            if (url.startsWith("/")) {
                return (request.getContextPath() + url);
            } else {
                return url;
            }
        } else {
            if (!context.startsWith("/") || !url.startsWith("/")) {
                throw new JspTagException(
                        Resources.getMessage("IMPORT_BAD_RELATIVE"));
            }
            if (context.endsWith("/") && url.startsWith("/")) {
                // Don't produce string starting with '//', many
                // browsers interpret this as host name, not as
                // path on same host. Bug 22860
                // Also avoid // inside the url. Bug 34109
                return (context.substring(0, context.length() - 1) + url);
            } else {
                return (context + url);
            }
        }
    }


    //*********************************************************************
    // Tag attributes known at translation time

    private void init() {
        value = var = null;
        params = null;
        context = null;
        scope = PageContext.PAGE_SCOPE;
    }

    public void setVar(String var) {
        this.var = var;
    }


    //*********************************************************************
    // Collaboration with subtags

    // inherit Javadoc

    public void setScope(String scope) {
        this.scope = Util.getScope(scope);
    }


    //*********************************************************************
    // Tag logic

    // resets any parameters that might be sent

    public void addParameter(String name, String value) {
        params.addParameter(name, value);
    }


    // gets the right value, encodes it, and prints or stores it

    @Override
    public int doStartTag() throws JspException {
        params = new ParamSupport.ParamManager();
        return EVAL_BODY_BUFFERED;
    }

    // Releases any resources we may have (or inherit)

    @Override
    public int doEndTag() throws JspException {
        String result;                // the eventual result

        // add (already encoded) parameters
        String baseUrl = resolveUrl(value, context, pageContext);
        result = params.aggregateParams(baseUrl);

        // if the URL is relative, rewrite it
        if (!UrlUtil.isAbsoluteUrl(result)) {
            HttpServletResponse response =
                    ((HttpServletResponse) pageContext.getResponse());
            result = response.encodeURL(result);
        }

        // store or print the output
        if (var != null) {
            pageContext.setAttribute(var, result, scope);
        } else {
            try {
                pageContext.getOut().print(result);
            } catch (java.io.IOException ex) {
                throw new JspTagException(ex.toString(), ex);
            }
        }

        return EVAL_PAGE;
    }

    //*********************************************************************
    // Utility methods

    @Override
    public void release() {
        init();
    }

}
