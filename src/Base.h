//
//  Base.h
//  ios-hoge
//
//  Created by chen on 2016/01/17.
//
//

#ifndef Base_h
#define Base_h
#include "ofxiOS.h"

class Base{
public:
    Base();
    
    void setPolice(int _x, int _y, int _w, int _h);
    void setPoliceColor(ofColor c);
    void drewPolice();
    void moveTo(int _x, int _y);
    bool touchInside(ofVec2f obj,ofRectangle rect, int _x, int _y);
    
    ofRectangle rect_police;
    ofColor col_police;
    ofVec2f pos_police;
    bool lockOn_police;
    
    
};

#endif /* Base_h */
