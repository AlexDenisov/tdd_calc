//
//  CalculationManager.m
//  tdd_calc
//
//  Created by Alex Denisov on 22.05.12.
//  Copyright (c) 2012 CoreInvader. All rights reserved.
//

#import "CalculationManager.h"

@implementation CalculationManager

static CalculationManager *_instance = nil;

+ (id)sharedInstance {
    if(_instance == nil){
        _instance = [CalculationManager new];
    }
    return _instance;
}

- (NSInteger)add:(NSInteger)aFirstAddendum with:(NSInteger)aSecondAddendum {
    return aFirstAddendum + aSecondAddendum;
}

- (NSInteger)subtract:(NSInteger)aSubtrahend from:(NSInteger)aMinuend {
    return aMinuend - aSubtrahend;
}

@end
