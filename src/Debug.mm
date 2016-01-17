//
//  Debug.m
//  ios-hoge
//
//  Created by chen on 2016/01/17.
//
//

#include "Debug.h"
Debug::Debug(){
}
void Debug::showLog(){
    ofSetColor(241, 41, 14);
    ofDrawBitmapString("DEBUG", ofGetWidth()-60, 10);
}

void Debug::drawGrid(){
    int i;
    for(i=10;i<ofGetHeight();i+=10){
        ofSetColor(228, 233, 238);
        ofDrawLine(10, i, ofGetWidth()-10, i);
        ofSetColor(255, 138, 160);
        ofDrawBitmapString(ofToString(i), 1, i+5);
        ofDrawBitmapString(ofToString(i), ofGetWidth()-20, i+5);
    }
    for(i=10;i<ofGetWidth();i+=10){
        ofSetColor(228, 233, 238);
        ofDrawLine(i, 10, i, ofGetHeight()-10);
//        ofSetColor(104, 199, 96);
//        ofDrawBitmapString(ofToString(i/10), i-5, 10);
//        ofDrawBitmapString(ofToString(i/10), i-5, ofGetHeight());
        
    }
    
}