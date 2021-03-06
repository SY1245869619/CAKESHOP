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

import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;
import javax.servlet.jsp.tagext.TryCatchFinally;

/**
 * <p>Tag handler for &lt;catch&gt; in JSTL 1.0.</p>
 *
 * <p>&lt;catch&gt; simply catches any Throwables that occur in its body
 * and optionally exposes them.
 *
 * @author Shawn Bayern
 */

public class CatchTag extends TagSupport implements TryCatchFinally {

    /*
     * If all tags that I proposed were this simple, people might
     * think I was just trying to avoid work.  :-)
     */

    //*********************************************************************
    // Constructor and lifecycle management

    // initialize inherited and local state

    private String var;                                 // tag attribute

    // Releases any resources we may have (or inherit)
    private boolean caught;                             // internal status

    public CatchTag() {
        super();
        init();
    }


    //*********************************************************************
    // Private state

    @Override
    public void release() {
        super.release();
        init();
    }

    private void init() {
        var = null;
    }


    //*********************************************************************
    // Tag logic

    @Override
    public int doStartTag() {
        caught = false;
        return EVAL_BODY_INCLUDE;
    }

    public void doCatch(Throwable t) {
        if (var != null) {
            pageContext.setAttribute(var, t, PageContext.PAGE_SCOPE);
        }
        caught = true;
    }

    public void doFinally() {
        if (var != null && !caught) {
            pageContext.removeAttribute(var, PageContext.PAGE_SCOPE);
        }
    }


    //*********************************************************************
    // Attribute accessors

    public void setVar(String var) {
        this.var = var;
    }

}
