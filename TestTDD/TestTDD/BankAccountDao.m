//
//  BankAccountDao.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/9/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "BankAccountDao.h"
#import "Account.h"

@implementation BankAccountDao

+(Account*)getAccountWithAccountNumber:(NSString*)accName{
    return nil;
}
+(BOOL )insertDatabase:(Account*)account{
    return NO;
    //insert database
}
+(BOOL)insertTimestamp:(NSDate*)_dateNow{
    return NO;
}
@end
