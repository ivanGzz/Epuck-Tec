/*
 * Original Author: http://www.eecs.harvard.edu/ssr/teaching/epucks/e-site.htm
 */

#ifndef BTCOM_H
#define BTCOM_H

#define BTCOM_MAX_MESSAGE_LENGTH 256

void btcomSendStringStatic (char* buffer);
void btcomSendString (char* buffer);
void btcomSendInt (long int x);
void btcomSendFloat (double x);
void btcomSendChar (char c);
void btcomWaitForCommand (char trigger);

// BTCOM_H
#endif
