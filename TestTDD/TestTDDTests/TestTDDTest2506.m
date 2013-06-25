//
//  TestTDDTest2506.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/25/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//
#import "Kiwi.h"
#import "Obj2506.h"
SPEC_BEGIN(calcu2506)
    describe(@"calculator string input", ^{
        it(@"string input nil equal 0", ^{
            [[theValue([Obj2506 cal2506:@""]) should] equal:theValue(0)];
        });
    });
SPEC_END