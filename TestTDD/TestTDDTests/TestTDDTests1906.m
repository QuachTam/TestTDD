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
    });
SPEC_END