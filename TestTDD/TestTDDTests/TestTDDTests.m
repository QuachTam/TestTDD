//
//  TestTDDTests.m
//  TestTDDTests
//
//  Created by Quach Ngoc Tam on 6/10/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//
#import "Kiwi.h"
#import "ObjCal.h"

SPEC_BEGIN(match)
    describe(@"Test TDD 13.06", ^{
        it(@"string content ", ^{
            [[theValue([ObjCal cal:@""]) should] equal:theValue(0)];
        });
        it(@"string content one number", ^{
            [[theValue([ObjCal cal:@"1"]) should] equal:theValue(1)];
        });
    });
SPEC_END