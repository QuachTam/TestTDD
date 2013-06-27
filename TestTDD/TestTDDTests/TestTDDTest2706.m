//
//  TestTDDTest2706.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/27/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "OBJ2706.h"
SPEC_BEGIN(Cal2706)
describe(@"calculator string input ", ^{
    it(@"input string nil equal 0", ^{
        [[theValue([OBJ2706 Cal:@""]) should] equal: theValue(0)];
    });
    
    it(@"input string 1 equal 1", ^{
        [[theValue([OBJ2706 Cal:@"1"]) should] equal: theValue(1)];
    });
    
    it(@"input string 1,2 equal 3", ^{
        [[theValue([OBJ2706 Cal:@"1,2"]) should] equal: theValue(3)];
    });
});
SPEC_END