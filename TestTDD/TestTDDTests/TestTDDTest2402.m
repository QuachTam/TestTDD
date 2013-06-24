//
//  TestTDDTest2402.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/24/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(calculator)
    describe(@"input string and calcultor", ^{
        it(@"input string nil equal 0", ^{
            [[theValue([Obj2406 cal2604:@""]) should] equal: theValue(0)];
        });
    });
SPEC_END
