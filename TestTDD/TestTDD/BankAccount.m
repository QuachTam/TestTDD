//
//  BankAccount.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "BankAccount.h"
#import "BankAccountDao.h"

@implementation BankAccount
-(id)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}
+(BankAccount*)getAccount:(NSString*)accountName{
    return [BankAccountDao getAccountWithAccountName:accountName];
}
@end
