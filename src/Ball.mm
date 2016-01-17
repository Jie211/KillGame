//
//  Ball.m
//  ios-hoge
//
//  Created by chen on 2016/01/16.
//
//

#include "Ball.h"

Ball::Ball(){
    color.set(ofRandom(255), ofRandom(255), ofRandom(255));
    pos.x=ofRandom(100);
    pos.y=ofRandom(100);
    radius=30;
    lockOn=false;
}


void Ball::moveTo(int _x, int _y){
    pos.x+=(_x - pos.x)*0.7;
    pos.y+=(_y - pos.y)*0.7;
}

void Ball::draw(){
    ofSetColor(color);
    ofFill();
    ofDrawCircle(pos.x, pos.y, radius);
}

bool Ball::touchInside(int _x, int _y){
    double dis = ofVec2f(_x, _y).distance(pos);
    if(dis < radius){
        isInside=true;
        return true;
    }
    isInside=false;
    return false;
}
