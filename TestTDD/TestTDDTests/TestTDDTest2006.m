//
//  TestTDDTest2006.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/21/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "Obj2006.h"
SPEC_BEGIN(Calcu)
    describe(@"calculator string input", ^{
        it(@"content nil  equal 0", ^{
            [[theValue([Obj2006 cal2006:@""]) should] equal:theValue(0)];
        });
    });
SPEC_END
