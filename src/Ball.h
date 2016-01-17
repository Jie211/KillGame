//
//  Ball.h
//  ios-hoge
//
//  Created by chen on 2016/01/16.
//
//

#ifndef Ball_h
#define Ball_h

#include "ofxiOS.h"

class Ball{
public:
    Ball();
    
    void moveTo(int _x, int _y);
    void draw();
    bool touchInside(int _x, int _y);
    
    
    ofVec2f pos;
    int radius;
    bool isInside;
    bool lockOn;
    ofColor color;
    
    
};

#endif /* Ball_h */
