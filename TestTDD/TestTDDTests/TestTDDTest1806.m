//
//  TestTDDTest1806.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//
#import "Kiwi.h"

SPEC_BEGIN(calculator)
    describe(@"calculator value", ^{
        it(@"input value nil return 0", ^{
            [[theValue([Cal1806 cal:@""]) should] equal:theValue(0)];
        });
    });
SPEC_END