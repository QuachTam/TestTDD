//
//  TestTDDTest2806.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/28/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//
#import "Kiwi.h"
#import "OBJ2806.h"

SPEC_BEGIN(OBJ2806_Class)
    describe(@"calculator string input", ^{
        it(@"string input nil equal 0", ^{
            [[theValue([OBJ2806 cal:@""]) should] equal: theValue(0)];
        });
        
        it(@"string input 1 equal 1", ^{
            [[theValue([OBJ2806 cal:@"1"]) should] equal: theValue(1)];
        });
        
        it(@"string input 2 equal 2", ^{
            [[theValue([OBJ2806 cal:@"2"]) should] equal: theValue(2)];
        });
        
        it(@"string input 1,2 equal 3", ^{
            [[theValue([OBJ2806 cal:@"1,2"]) should] equal: theValue(3)];
        });
        
        it(@"string input 1,2,3 equal 6", ^{
            [[theValue([OBJ2806 cal:@"1,2,3"]) should] equal: theValue(6)];
        });
        
        it(@"string input 1\n2,3 equal 6", ^{
            [[theValue([OBJ2806 cal:@"1\n2,3"]) should] equal: theValue(6)];
        });
    });
SPEC_END
