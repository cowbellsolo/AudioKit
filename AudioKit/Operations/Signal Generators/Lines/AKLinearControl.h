//
//  AKLinearControl.h
//  AudioKit
//
//  Auto-generated on 12/25/14.
//  Copyright (c) 2014 Aurelius Prochazka. All rights reserved.
//

#import "AKControl.h"
#import "AKParameter+Operation.h"

/** Creates an infinitely long line that connects a starting to an ending point over the given time duration.

 If this value is used past the duration point, the line continues indefinitely.
 */

@interface AKLinearControl : AKControl
/// Instantiates the linear control with all values
/// @param firstPoint Value to start the line from. [Default Value: 0]
/// @param secondPoint Value to end the line at. [Default Value: 1]
/// @param durationBetweenPoints Duration in seconds between the defining points. [Default Value: 1]
- (instancetype)initWithFirstPoint:(AKConstant *)firstPoint
                       secondPoint:(AKConstant *)secondPoint
             durationBetweenPoints:(AKConstant *)durationBetweenPoints;

/// Instantiates the linear control with default values
- (instancetype)init;

/// Instantiates the linear control with default values
+ (instancetype)control;


/// Value to start the line from. [Default Value: 0]
@property AKConstant *firstPoint;

/// Set an optional first point
/// @param firstPoint Value to start the line from. [Default Value: 0]
- (void)setOptionalFirstPoint:(AKConstant *)firstPoint;

/// Value to end the line at. [Default Value: 1]
@property AKConstant *secondPoint;

/// Set an optional second point
/// @param secondPoint Value to end the line at. [Default Value: 1]
- (void)setOptionalSecondPoint:(AKConstant *)secondPoint;

/// Duration in seconds between the defining points. [Default Value: 1]
@property AKConstant *durationBetweenPoints;

/// Set an optional duration between points
/// @param durationBetweenPoints Duration in seconds between the defining points. [Default Value: 1]
- (void)setOptionalDurationBetweenPoints:(AKConstant *)durationBetweenPoints;



@end
