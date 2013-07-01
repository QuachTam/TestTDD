//
//  TestTDDTest0107.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/1/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "OBJ0107.h"
SPEC_BEGIN(OBJ0107_class)
    describe(@"calculator string input ", ^{
        it(@"string input nil equal 0", ^{
            [[theValue([OBJ0107 cal:@""]) should] equal: theValue(0)];
        });
        
        it(@"string input 1 equal 1", ^{
            [[theValue([OBJ0107 cal:@"1"]) should] equal: theValue(1)];
        });
        
        it(@"string input 2 equal 2", ^{
            [[theValue([OBJ0107 cal:@"2"]) should] equal: theValue(2)];
        });
        
        it(@"string input 1,2 equal 3", ^{
            [[theValue([OBJ0107 cal:@"1,2"]) should] equal: theValue(3)];
        });
        
        it(@"string input 1,2,3 equal 6", ^{
            [[theValue([OBJ0107 cal:@"1,2,3"]) should] equal: theValue(6)];
        });
    });
SPEC_END
