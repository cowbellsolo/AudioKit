//
//  AKGuiro.m
//  AudioKit
//
//  Auto-generated on 12/25/14.
//  Copyright (c) 2014 Aurelius Prochazka. All rights reserved.
//
//  Implementation of Csound's guiro:
//  http://www.csounds.com/manual/html/guiro.html
//

#import "AKGuiro.h"
#import "AKManager.h"

@implementation AKGuiro

- (instancetype)initWithCount:(AKConstant *)count
        mainResonantFrequency:(AKConstant *)mainResonantFrequency
       firstResonantFrequency:(AKConstant *)firstResonantFrequency
{
    self = [super initWithString:[self operationName]];
    if (self) {
        _count = count;
        _mainResonantFrequency = mainResonantFrequency;
        _firstResonantFrequency = firstResonantFrequency;
    }
    return self;
}

- (instancetype)init
{
    self = [super initWithString:[self operationName]];
    if (self) {
        // Default Values
        _count = akp(128);
        _mainResonantFrequency = akp(2500);
        _firstResonantFrequency = akp(4000);
    }
    return self;
}

+ (instancetype)audio
{
    return [[AKGuiro alloc] init];
}

- (void)setOptionalCount:(AKConstant *)count {
    _count = count;
}
- (void)setOptionalMainResonantFrequency:(AKConstant *)mainResonantFrequency {
    _mainResonantFrequency = mainResonantFrequency;
}
- (void)setOptionalFirstResonantFrequency:(AKConstant *)firstResonantFrequency {
    _firstResonantFrequency = firstResonantFrequency;
}

- (NSString *)stringForCSD {
    // Constant Values  
    AKConstant *_energyReturn = akp(0);        
    AKConstant *_maximumDuration = akp(1.0);        
    AKConstant *_amplitude = akp(1.0);        
    AKConstant *_dampingFactor = akp(0);        
    NSMutableString *csdString = [[NSMutableString alloc] init];

    [csdString appendFormat:@"%@ guiro ", self];

    if ([_amplitude isKindOfClass:[AKControl class]] ) {
        [csdString appendFormat:@"%@, ", _amplitude];
    } else {
        [csdString appendFormat:@"AKControl(%@), ", _amplitude];
    }

    [csdString appendFormat:@"%@, ", _maximumDuration];
    
    [csdString appendFormat:@"%@, ", _count];
    
    [csdString appendFormat:@"%@, ", _dampingFactor];
    
    [csdString appendFormat:@"%@, ", _energyReturn];
    
    [csdString appendFormat:@"%@, ", _mainResonantFrequency];
    
    [csdString appendFormat:@"%@", _firstResonantFrequency];
    return csdString;
}

@end
