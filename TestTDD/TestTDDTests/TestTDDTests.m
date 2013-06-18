//
//  TestTDDTests.m
//  TestTDDTests
//
//  Created by Quach Ngoc Tam on 6/10/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//
#import "Kiwi.h"
#import "ObjStack.h"
SPEC_BEGIN(match)
    describe(@"Test TDD 17.06", ^{
        it(@"chekc size ", ^{
            [[theValue([ObjStack countSize]) should] equal:theValue(0)];
        });
        it(@"push value", ^{
            [[theValue([ObjStack pushValue:@"value 1"]) should] equal:theValue(1)];
        });
        
        it(@"push and count", ^{
            ObjStack *obj = [[ObjStack alloc] init];
            
        });
    });
SPEC_END