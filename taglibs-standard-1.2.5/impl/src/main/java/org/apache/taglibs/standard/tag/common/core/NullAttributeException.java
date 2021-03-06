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

import javax.servlet.jsp.JspTagException;

/**
 * <p>NullAttributeException is a JspTagException that will be thrown
 * by the JSTL RI handlers when a tag attribute illegally evaluates
 * to 'null'.</p>
 *
 * @author Shawn Bayern
 */

public class NullAttributeException extends JspTagException {

    /**
     * Constructs a NullAttributeException with appropriate information.
     *
     * @param tag The name of the tag in which the error occurred.
     * @param att The attribute value for which the error occurred.
     */
    public NullAttributeException(String tag, String att) {
        super(Resources.getMessage("TAG_NULL_ATTRIBUTE", att, tag));
    }
}
