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
        
        it(@"string input 1 equal 1", ^{
            [[theValue([Obj2506 cal2506:@"1"]) should] equal:theValue(1)];
        });
        
        it(@"string input 1,2 equal 3", ^{
            [[theValue([Obj2506 cal2506:@"1,2"]) should] equal:theValue(3)];
        });
        
        it(@"string input 1,2,3 equal 6", ^{
            [[theValue([Obj2506 cal2506:@"1,2,3"]) should] equal:theValue(6)];
        });
        
        it(@"string input 1,2,3 equal 6", ^{
            [[theValue([Obj2506 cal2506:@"1\n2,3"]) should] equal:theValue(6)];
        });
    });
SPEC_END