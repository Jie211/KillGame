//
//  Base.m
//  ios-hoge
//
//  Created by chen on 2016/01/17.
//
//

#include "Base.h"

Base::Base(){
//    ofSetRectMode(OF_RECTMODE_CENTER);
//    pos_police.x=ofRandom(300);
//    pos_police.y=ofRandom(300);
    setPolice(ofRandom(300), ofRandom(300), 300, 300);
    setPoliceColor(ofColor(247, 205, 92));
}

void Base::setPolice(int _x, int _y, int _w, int _h){
    rect_police.x=_x;
    rect_police.y=_y;
    rect_police.width=_w;
    rect_police.height=_h;
}
void Base::setPoliceColor(ofColor c){
    col_police=c;
}
void Base::drewPolice(){
    ofSetColor(col_police);
    ofDrawRectangle(rect_police);
}
void Base::moveTo(int _x, int _y){
    pos_police.x+=(_x - pos_police.x)*0.7;
    pos_police.y+=(_y - pos_police.y)*0.7;
}
bool Base::touchInside(ofVec2f obj,ofRectangle rect, int _x, int _y){
    ofVec2f dis;
    dis.x = fabs(_x - obj.x);
    dis.y = fabs(_y - obj.y);
    
    if(dis.x < rect.width && dis.y < rect.height){
        return true;
    }
    return false;
}
//void Base::drawAreaPolice(){
//    ofSetColor(228, 233, 238, 100);
//    ofDrawRectangle(10, 10, 200, 100);
//    ofFill();
//}

