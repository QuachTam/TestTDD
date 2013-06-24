//
//  TestTDDTest2402.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/24/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "Obj2406.h"
SPEC_BEGIN(Obj24062013)
    describe(@"input string and calcultor", ^{
        it(@"input string nil equal 0", ^{
            [[theValue([Obj2406 cal2604:@""]) should] equal: theValue(0)];
        });
        
        it(@"input string 1 equal 1", ^{
            [[theValue([Obj2406 cal2604:@"1"]) should] equal: theValue(1)];
        });
    });
SPEC_END
