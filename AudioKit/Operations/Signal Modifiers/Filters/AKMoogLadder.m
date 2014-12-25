//
//  AKMoogLadder.m
//  AudioKit
//
//  Auto-generated on 12/25/14.
//  Copyright (c) 2014 Aurelius Prochazka. All rights reserved.
//
//  Implementation of Csound's moogladder:
//  http://www.csounds.com/manual/html/moogladder.html
//

#import "AKMoogLadder.h"
#import "AKManager.h"

@implementation AKMoogLadder
{
    AKParameter * _audioSource;
}

- (instancetype)initWithAudioSource:(AKParameter *)audioSource
                    cutoffFrequency:(AKParameter *)cutoffFrequency
                          resonance:(AKParameter *)resonance
{
    self = [super initWithString:[self operationName]];
    if (self) {
        _audioSource = audioSource;
        _cutoffFrequency = cutoffFrequency;
        _resonance = resonance;
    }
    return self;
}

- (instancetype)initWithAudioSource:(AKParameter *)audioSource
{
    self = [super initWithString:[self operationName]];
    if (self) {
        _audioSource = audioSource;
        // Default Values
        _cutoffFrequency = akp(100);
        _resonance = akp(0.5);
    }
    return self;
}

+ (instancetype)audioWithAudioSource:(AKParameter *)audioSource
{
    return [[AKMoogLadder alloc] initWithAudioSource:audioSource];
}

- (void)setOptionalCutoffFrequency:(AKParameter *)cutoffFrequency {
    _cutoffFrequency = cutoffFrequency;
}
- (void)setOptionalResonance:(AKParameter *)resonance {
    _resonance = resonance;
}

- (NSString *)stringForCSD {
    NSMutableString *csdString = [[NSMutableString alloc] init];

    [csdString appendFormat:@"%@ moogladder ", self];

    if ([_audioSource isKindOfClass:[AKAudio class]] ) {
        [csdString appendFormat:@"%@, ", _audioSource];
    } else {
        [csdString appendFormat:@"AKAudio(%@), ", _audioSource];
    }

    if ([_cutoffFrequency isKindOfClass:[AKControl class]] ) {
        [csdString appendFormat:@"%@, ", _cutoffFrequency];
    } else {
        [csdString appendFormat:@"AKControl(%@), ", _cutoffFrequency];
    }

    if ([_resonance isKindOfClass:[AKControl class]] ) {
        [csdString appendFormat:@"%@", _resonance];
    } else {
        [csdString appendFormat:@"AKControl(%@)", _resonance];
    }
return csdString;
}

@end
