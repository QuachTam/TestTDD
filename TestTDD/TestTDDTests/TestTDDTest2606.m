//
//  TestTDDTest2606.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/26/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "Obj2605.h"
SPEC_BEGIN(calcultor2605)
    describe(@"calculator string input", ^{
        it(@"string input nil equal 0", ^{
            [[theValue([Obj2605 cal2605:@""]) should] equal:theValue(0)];
        });
        
        it(@"string input 1 equal 1", ^{
            [[theValue([Obj2605 cal2605:@"1"]) should] equal:theValue(1)];
        });
        
        it(@"string input 2 equal 2", ^{
            [[theValue([Obj2605 cal2605:@"2"]) should] equal:theValue(2)];
        });
        
        it(@"string input 1,2 equal 3", ^{
            [[theValue([Obj2605 cal2605:@"1,2"]) should] equal:theValue(3)];
        });
    });
SPEC_END