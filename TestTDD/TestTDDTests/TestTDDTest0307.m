//
//  TestTDDTest0307.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "BankAccount.h"
#import "BankAccountDao.h"
#import "Account.h"

SPEC_BEGIN(class_BankAccount)
    describe(@"Open new BankAccount", ^{
        __block NSString *accountNumber;
        
        beforeEach(^{
            accountNumber = [NSString nullMock];
        });
        
        it(@"open new account, accountNumber !nil", ^{
            BankAccount *_bankAcount = [[BankAccount alloc] init];
             Account *_account = [_bankAcount openAccount];
            [_account.accountNumber shouldNotBeNil];
        });
        
        it(@"open new account, balance = 0", ^{
            BankAccount *_bankAcount = [[BankAccount alloc] init];
            Account *_account = [_bankAcount openAccount];
            [[theValue(_account.balance) should] equal:theValue(0)];
        });
        
        it(@"open new account, openTimestamp !nil", ^{
            BankAccount *_bankAccount = [[BankAccount alloc] init];
            Account *_account = [_bankAccount openAccount];
            [_account.openTimestamp shouldNotBeNil];
        });
//        
//        it(@"getAccount", ^{
//            
//            BankAccount *_bank = [BankAccount nullMock];
//            [_bank stub:@selector(accountNumber) andReturn:accountNumber];
//            
//            BankAccountDao *_bankDao = [BankAccountDao nullMock];
//            [_bankDao stub:@selector(getAccountWithAccountName:) andReturn:_bank withArguments:accountNumber];
//            
//            BankAccount *_bankGet = [_bank getAccount:accountNumber];
//            [[_bankGet.accountNumber should] equal:accountNumber];
//        });
    });
SPEC_END
