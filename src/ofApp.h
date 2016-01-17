#pragma once

#include "ofxiOS.h"

#include "ofxGui.h"
#include "ofxTrueTypeFontUC.h"

#include "Ball.h"
#include "Debug.h"
#include "Base.h"


class ofApp : public ofxiOSApp {
	
    public:
        void setup();
        void update();
        void draw();
        void exit();
	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);

    ofxPanel gui;
    ofxFloatSlider gui_radius;
    ofxColorSlider gui_color;
    ofxVec2Slider gui_position;
    Ball theBall;
    Debug debug;
    Base base;
    
private:
    //ofTrueTypeFont font;
    //ofxTrueTypeFontUC ucfont;
    
};


