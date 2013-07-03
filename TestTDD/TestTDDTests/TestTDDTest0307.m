//
//  TestTDDTest0307.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "BankAccount.h"

SPEC_BEGIN(class_0307)
    describe(@"Test TDD 2", ^{
        it(@"open new account", ^{
            BankAccount *_bankAcount = [[BankAccount alloc] init];
            [_bankAcount.accountNumber shouldNotBeNil];
        });
    });
SPEC_END
