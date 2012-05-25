//
//  main.m
//  UnitTests
//
//  Created by Alex Denisov on 22.05.12.
//  Copyright (c) 2012 CoreInvader. All rights reserved.
//

#import <Cedar-iOS/SpecHelper.h>
using namespace Cedar::Matchers;

SPEC_BEGIN(FooSpec)

beforeEach(^{
    NSLog(@"before each");
});
afterEach(^{
    NSLog(@"after each");
});

describe(@"Foo", ^{
    it(@"YES hould be YES", ^{
        YES should equal(YES);
    });
});

SPEC_END
