#ifndef _H_UTILITY_H_
#define _H_UTILITY_H_

void wait(long num);
void myWait(long milli);
int getselector();
void setLED(int LEDnum, int state);
void allRedLEDsOff();
void allRedLEDsOn();
void setErrorPercent(int input);
void setSpeeds(int leftSpeed, int rightSpeed);
void moveForward(int dist, int speed);
void move(int dist, int speed);
void turn(double degrees, int speed);
char btcomGetCharacter();

#endif
