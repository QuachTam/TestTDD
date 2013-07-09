//
//  BankAccount.h
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface BankAccount : NSObject{
   
}
- (Account*)openAccount;
+(Account*)getAccount:(NSString*)accountName;
@end
