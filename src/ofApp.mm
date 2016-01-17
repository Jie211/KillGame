#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    
    ofSetOrientation(OF_ORIENTATION_90_RIGHT);
    ofSetRectMode(OF_RECTMODE_CENTER);
//    ofSetFullscreen(true);
    
    ofSetFrameRate(60);
    ofBackground(127);
    ofSetCircleResolution(32);
    ofEnableSmoothing();
    
    ofColor initColor = ofColor(0, 127, 255, 255);
    ofColor minColor = ofColor(0, 0, 0, 0);
    ofColor maxColor = ofColor(255, 255, 255, 255);
    
    ofVec2f initPos = ofVec2f(ofGetWidth()/2, ofGetHeight()/2);
    ofVec2f minPos = ofVec2f(0, 0);
    ofVec2f maxPos = ofVec2f(ofGetWidth(), ofGetHeight());
    
    gui.setup();
    gui.add(gui_radius.setup("radius", 200, 0, 400));
    gui.add(gui_color.setup("color", initColor, minColor, maxColor));
    gui.add(gui_position.setup("position", initPos, minPos, maxPos));
    
    
    //ucfont.loadFont("kssweetheavycalligraphy.ttf", 20, true, true);
    //ucfont.loadFont("msyhbd.ttf", 20, true, true);
}

//--------------------------------------------------------------
void ofApp::update(){
}

//--------------------------------------------------------------
void ofApp::draw(){
//    debug.showLog();
//    debug.drawGrid();
    
//    base.drawArea();
    
    ofSetColor(gui_color);
    ofDrawCircle(ofVec2f(gui_position), gui_radius);
    gui.draw();
    theBall.draw();
//    base.drewPolice();
    
    ofDrawBitmapString("Hello world", ofGetWidth()/2, ofGetHeight()/2);
    

    //ucfont.drawString("日本語かなカナ銀魂切腹しろ！", mouseX, mouseY);
    //ucfont.drawString("你好么", mouseX, mouseY);

}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    if(theBall.touchInside(mouseX, mouseY)){
        theBall.lockOn=true;
    }
//    if(base.touchInside(base.pos_police, base.rect_police, mouseX, mouseY)){
//        base.lockOn_police=true;
//        printf("on!\n");
//    }
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
    if(theBall.lockOn){
//        theBall.x += (mouseX - theBall.x);
//        theBall.y += (mouseY - theBall.y);
        theBall.moveTo(mouseX, mouseY);
        
    }
//    if(base.lockOn_police){
////        base.moveTo(mouseX, mouseY);
//        base.pos_police.x += (mouseX - base.pos_police.x);
//        base.pos_police.y += (mouseY - base.pos_police.y);
//    }
}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
    if(theBall.touchInside(mouseX, mouseY)){
        theBall.lockOn=false;
    }
//    if(base.touchInside(base.pos_police, base.rect_police, mouseX, mouseY)){
//        base.lockOn_police=false;
//        printf("off!\n");
//    }
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
