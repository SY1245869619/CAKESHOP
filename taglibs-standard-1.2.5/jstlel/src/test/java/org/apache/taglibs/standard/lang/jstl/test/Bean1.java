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

package org.apache.taglibs.standard.lang.jstl.test;

import java.util.List;
import java.util.Map;

/**
 * <p>This is a test bean with a set of properties
 *
 * @author Nathan Abramson - Art Technology Group
 */

public class Bean1 {
    //-------------------------------------
    // Properties
    //-------------------------------------
    // property boolean1

    boolean mBoolean1;
    byte mByte1;
    char mChar1;

    //-------------------------------------
    // property byte1
    short mShort1;
    int mInt1;
    long mLong1;

    //-------------------------------------
    // property char1
    float mFloat1;
    double mDouble1;
    Boolean mBoolean2;

    //-------------------------------------
    // property short1
    Byte mByte2;
    Character mChar2;
    Short mShort2;

    //-------------------------------------
    // property int1
    Integer mInt2;
    Long mLong2;
    Float mFloat2;

    //-------------------------------------
    // property long1
    Double mDouble2;
    String mString1;
    String mString2;

    //-------------------------------------
    // property float1
    Bean1 mBean1;
    Bean1 mBean2;
    String mNoGetter;

    //-------------------------------------
    // property double1
    String mErrorInGetter;
    String[] mStringArray1;
    List mList1;

    //-------------------------------------
    // property boolean2
    Map mMap1;

    /**
     * Constructor
     */
    public Bean1() {
    }

    public boolean getBoolean1() {
        return mBoolean1;
    }

    //-------------------------------------
    // property byte2

    public void setBoolean1(boolean pBoolean1) {
        mBoolean1 = pBoolean1;
    }

    public byte getByte1() {
        return mByte1;
    }

    public void setByte1(byte pByte1) {
        mByte1 = pByte1;
    }

    //-------------------------------------
    // property char2

    public char getChar1() {
        return mChar1;
    }

    public void setChar1(char pChar1) {
        mChar1 = pChar1;
    }

    public short getShort1() {
        return mShort1;
    }

    //-------------------------------------
    // property short2

    public void setShort1(short pShort1) {
        mShort1 = pShort1;
    }

    public int getInt1() {
        return mInt1;
    }

    public void setInt1(int pInt1) {
        mInt1 = pInt1;
    }

    //-------------------------------------
    // property int2

    public long getLong1() {
        return mLong1;
    }

    public void setLong1(long pLong1) {
        mLong1 = pLong1;
    }

    public float getFloat1() {
        return mFloat1;
    }

    //-------------------------------------
    // property long2

    public void setFloat1(float pFloat1) {
        mFloat1 = pFloat1;
    }

    public double getDouble1() {
        return mDouble1;
    }

    public void setDouble1(double pDouble1) {
        mDouble1 = pDouble1;
    }

    //-------------------------------------
    // property float2

    public Boolean getBoolean2() {
        return mBoolean2;
    }

    public void setBoolean2(Boolean pBoolean2) {
        mBoolean2 = pBoolean2;
    }

    public Byte getByte2() {
        return mByte2;
    }

    //-------------------------------------
    // property double2

    public void setByte2(Byte pByte2) {
        mByte2 = pByte2;
    }

    public Character getChar2() {
        return mChar2;
    }

    public void setChar2(Character pChar2) {
        mChar2 = pChar2;
    }

    //-------------------------------------
    // property string1

    public Short getShort2() {
        return mShort2;
    }

    public void setShort2(Short pShort2) {
        mShort2 = pShort2;
    }

    public Integer getInt2() {
        return mInt2;
    }

    //-------------------------------------
    // property string2

    public void setInt2(Integer pInt2) {
        mInt2 = pInt2;
    }

    public Long getLong2() {
        return mLong2;
    }

    public void setLong2(Long pLong2) {
        mLong2 = pLong2;
    }

    //-------------------------------------
    // property bean1

    public Float getFloat2() {
        return mFloat2;
    }

    public void setFloat2(Float pFloat2) {
        mFloat2 = pFloat2;
    }

    public Double getDouble2() {
        return mDouble2;
    }

    //-------------------------------------
    // property bean2

    public void setDouble2(Double pDouble2) {
        mDouble2 = pDouble2;
    }

    public String getString1() {
        return mString1;
    }

    public void setString1(String pString1) {
        mString1 = pString1;
    }

    //-------------------------------------
    // property noGetter

    public String getString2() {
        return mString2;
    }

    public void setString2(String pString2) {
        mString2 = pString2;
    }

    //-------------------------------------
    // property errorInGetter

    public Bean1 getBean1() {
        return mBean1;
    }

    public void setBean1(Bean1 pBean1) {
        mBean1 = pBean1;
    }

    //-------------------------------------
    // property stringArray1

    public Bean1 getBean2() {
        return mBean2;
    }

    public void setBean2(Bean1 pBean2) {
        mBean2 = pBean2;
    }

    public void setNoGetter(String pNoGetter) {
        mNoGetter = pNoGetter;
    }

    //-------------------------------------
    // property list1

    public String getErrorInGetter() {
        throw new NullPointerException("Error!");
    }

    public String[] getStringArray1() {
        return mStringArray1;
    }

    public void setStringArray1(String[] pStringArray1) {
        mStringArray1 = pStringArray1;
    }

    //-------------------------------------
    // property map1

    public List getList1() {
        return mList1;
    }

    public void setList1(List pList1) {
        mList1 = pList1;
    }

    public Map getMap1() {
        return mMap1;
    }

    //-------------------------------------
    // property indexed1

    public void setMap1(Map pMap1) {
        mMap1 = pMap1;
    }

    //-------------------------------------
    // Member variables
    //-------------------------------------

    //-------------------------------------

    public String getIndexed1(int pIndex) {
        return mStringArray1[pIndex];
    }

    //-------------------------------------

}
