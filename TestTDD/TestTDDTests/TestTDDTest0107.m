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
    });
SPEC_END
