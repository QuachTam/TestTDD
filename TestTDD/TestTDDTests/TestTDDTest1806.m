//
//  TestTDDTest1806.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//
#import "Kiwi.h"
#import "Cal1806.h"

SPEC_BEGIN(calculator)
    describe(@"calculator value", ^{
        it(@"input value nil return 0", ^{
            [[theValue([Cal1806 cal:@""]) should] equal:theValue(0)];
        });
        
        it(@"input value !nil ", ^{
            [[theValue([Cal1806 cal:@"1"]) should] equal:theValue(1)];
        });
        
        it(@"input value 1,2", ^{
            [[theValue([Cal1806 cal:@"1,2"]) should] equal:theValue(3)];
        });
        
        it(@"input vale 1\n2,3 -> equal 6", ^{
            [[theValue([Cal1806 cal:@"1\n2,3"]) should] equal:theValue(6)];
        });
    });
SPEC_END