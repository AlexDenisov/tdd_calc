//
//  CalculationManagerSpecs.mm
//  tdd_calc
//
//  Created by Alex Denisov on 22.05.12.
//  Copyright (c) 2012 CoreInvader. All rights reserved.
//

#import <Cedar-iOS/SpecHelper.h>
using namespace Cedar::Matchers;
#import "CalculationManager.h"

SPEC_BEGIN(CalculationManagerSpecs)

describe(@"CalculationManager", ^{
    it(@"sharedInstance should not return nil", ^{
        id instance = [CalculationManager sharedInstance];
        instance should_not be_nil;
    });
    describe(@"calculations should be correct", ^{
        CalculationManager *manager = [CalculationManager sharedInstance];
        it(@"addition should be correct", ^{
            NSInteger left = 5;
            NSInteger right = 37;
            NSInteger etalonResult = 42;
            NSInteger realResult = [manager add:left with:right];
            realResult should equal(etalonResult);
        });
        it(@"subtract should be correct", ^{
            NSInteger left = 14;
            NSInteger right = 12;
            NSInteger etalonResult = 2;
            NSInteger realResult = [manager subtract:right from:left];
            realResult should equal(etalonResult);
        });
    });
});

SPEC_END