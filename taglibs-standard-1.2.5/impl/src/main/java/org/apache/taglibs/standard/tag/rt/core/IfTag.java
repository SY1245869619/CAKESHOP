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

package org.apache.taglibs.standard.tag.rt.core;

import javax.servlet.jsp.jstl.core.ConditionalTagSupport;

/**
 * <p>Tag handler for &lt;if&gt; in JSTL's rtexprvalue library.  Because
 * of the support provided by the ConditionalTagSupport class, this
 * tag is trivial enough not to require a separate base supporting class
 * common to both libraries.</p>
 *
 * @author Shawn Bayern
 */

public class IfTag extends ConditionalTagSupport {

    //*********************************************************************
    // Constructor and lifecycle management

    // initialize inherited and local state

    private boolean test;               // the value of the 'test' attribute

    // Releases any resources we may have (or inherit)

    public IfTag() {
        super();
        init();
    }


    //*********************************************************************
    // Supplied conditional logic

    @Override
    public void release() {
        super.release();
        init();
    }


    //*********************************************************************
    // Private state

    @Override
    protected boolean condition() {
        return test;
    }


    //*********************************************************************
    // Accessors

    // receives the tag's 'test' attribute

    public void setTest(boolean test) {
        this.test = test;
    }


    //*********************************************************************
    // Private utility methods

    // resets internal state

    private void init() {
        test = false;
    }
}
