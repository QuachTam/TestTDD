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
        
        it(@"content !nil equal self value", ^{
            [[theValue([Obj2006 cal2006:@"1"]) should] equal:theValue(1)];
        });
        
        it(@"content 1,2 equal 3", ^{
            [[theValue([Obj2006 cal2006:@"1,2"]) should] equal:theValue(3)];
        });
        
        it(@"content 1,2,3 equal 6", ^{
            [[theValue([Obj2006 cal2006:@"1,2,3"]) should] equal:theValue(6)];
        });
        
        it(@"content 1\n2,3 equal 6", ^{
            [[theValue([Obj2006 cal2006:@"1\n2,3"]) should] equal:theValue(6)];
        });
    });
SPEC_END
