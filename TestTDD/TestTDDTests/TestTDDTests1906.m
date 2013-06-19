//
//  TestTDDTests1906.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/19/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "Obj1906.h"

SPEC_BEGIN(Calcul)
    describe(@"test calculator", ^{
        it(@"test input nil return 0", ^{
            [[theValue([Obj1906 cal:@""]) should] equal:theValue(0)];
        });
        
        it(@"test input !nil return self", ^{
            [[theValue([Obj1906 cal:@"1"]) should] equal:theValue(1)];
        });
        
        it(@"test input string 1,2", ^{
            [[theValue([Obj1906 cal:@"1,2"]) should] equal:theValue(3)];
        });
    });
SPEC_END