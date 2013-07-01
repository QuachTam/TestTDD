//
//  TestTDDTest0107.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/1/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(OBJ0107_class)
    describe(@"calculator string input ", ^{
        it(@"string input nil equal 0", ^{
            [[theValue([OBJ0107 cal:@""]) should] equal: theValue(0)];
        });
    });
SPEC_END
