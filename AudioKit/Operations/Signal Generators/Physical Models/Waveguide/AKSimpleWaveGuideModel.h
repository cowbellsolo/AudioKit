//
//  AKSimpleWaveGuideModel.h
//  AudioKit
//
//  Auto-generated on 12/25/14.
//  Copyright (c) 2014 Aurelius Prochazka. All rights reserved.
//

#import "AKAudio.h"
#import "AKParameter+Operation.h"

/** A simple waveguide model consisting of one delay-line and one first-order lowpass filter.

 This is the most elemental waveguide model, consisting of one delay-line and one first-order lowpass filter.
 */

@interface AKSimpleWaveGuideModel : AKAudio
/// Instantiates the simple wave guide model with all values
/// @param audioSource The excitation noise. [Default Value: ]
/// @param frequency The inverse of delay time. [Default Value: 440]
/// @param cutoff Filter cut-off frequency in Hz Updated at Control-rate. [Default Value: 3000]
/// @param feedback Feedback factor usually between 0 and 1 Updated at Control-rate. [Default Value: 0.8]
- (instancetype)initWithAudioSource:(AKParameter *)audioSource
                          frequency:(AKParameter *)frequency
                             cutoff:(AKParameter *)cutoff
                           feedback:(AKParameter *)feedback;

/// Instantiates the simple wave guide model with default values
/// @param audioSource The excitation noise.
- (instancetype)initWithAudioSource:(AKParameter *)audioSource;

/// Instantiates the simple wave guide model with default values
/// @param audioSource The excitation noise.
+ (instancetype)audioWithAudioSource:(AKParameter *)audioSource;

/// The inverse of delay time. [Default Value: 440]
@property AKParameter *frequency;

/// Set an optional frequency
/// @param frequency The inverse of delay time. [Default Value: 440]
- (void)setOptionalFrequency:(AKParameter *)frequency;

/// Filter cut-off frequency in Hz [Default Value: 3000]
@property AKParameter *cutoff;

/// Set an optional cutoff
/// @param cutoff Filter cut-off frequency in Hz Updated at Control-rate. [Default Value: 3000]
- (void)setOptionalCutoff:(AKParameter *)cutoff;

/// Feedback factor usually between 0 and 1 [Default Value: 0.8]
@property AKParameter *feedback;

/// Set an optional feedback
/// @param feedback Feedback factor usually between 0 and 1 Updated at Control-rate. [Default Value: 0.8]
- (void)setOptionalFeedback:(AKParameter *)feedback;



@end
