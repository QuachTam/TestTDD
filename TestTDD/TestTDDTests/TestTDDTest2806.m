//
//  TestTDDTest2806.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/28/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//
#import "Kiwi.h"

SPEC_BEGIN(OBJ2806_Class)
    describe(@"calculator string input", ^{
        it(@"string input nil equal 0", ^{
            [[theValue([OBJ2806 cal:@""]) should] equal: theValue(0)];
        });
    });
SPEC_END
