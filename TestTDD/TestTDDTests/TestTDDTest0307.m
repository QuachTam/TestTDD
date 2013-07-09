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
        
        it(@"getAccount", ^{
            //3 BankAccountDao select database return Account
            //2 BankAcount getAccount From BankAccountDao
            //1 Account from BankAcount --> Account.accountNumer == accountNumber
            
            Account *_accountGet = [Account nullMock];
            [_accountGet stub:@selector(accountNumber) andReturn:accountNumber];
            
            BankAccount *_bankAccount = [BankAccount nullMock];
            [_bankAccount stub:@selector(getAccount:) andReturn:_accountGet];
            
            
            
            Account *_account = [_bankAccount getAccount:accountNumber];
            [[_account.accountNumber should] equal:accountNumber];
        });
    });
SPEC_END
