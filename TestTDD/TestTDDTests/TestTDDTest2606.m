//
//  TestTDDTest2606.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/26/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(calcultor2605)
    describe(@"calculator string input", ^{
        it(@"string input nil equal 0", ^{
            [[theValue([Obj2605 cal2605:@""]) should] equal:theValue(0)];
        });
    });
SPEC_END