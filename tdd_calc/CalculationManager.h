//
//  CalculationManager.h
//  tdd_calc
//
//  Created by Alex Denisov on 22.05.12.
//  Copyright (c) 2012 CoreInvader. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculationManager : NSObject

+ (id)sharedInstance;

- (NSInteger)add:(NSInteger)aFirstAddendum with:(NSInteger)aSecondAddendum;
- (NSInteger)subtract:(NSInteger)aSubtrahend from:(NSInteger)aMinuend;

@end
