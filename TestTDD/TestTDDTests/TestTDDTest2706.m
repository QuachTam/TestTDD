//
//  TestTDDTest2706.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/27/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(Cal2706)
describe(@"calculator string input ", ^{
    it(@"input string nil equal 0", ^{
        [[theValue([OBJ2706 Cal:@""]) should] equal: theValue(0)];
    });
});
SPEC_END