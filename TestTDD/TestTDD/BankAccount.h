//
//  BankAccount.h
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount : NSObject{
    NSDate *openTimestamp;
    NSString *accountNumber;
    double balance;
}
@property (strong, nonatomic) NSString *accountNumber;
@property (nonatomic, readwrite) double balance;
@property (nonatomic, readwrite) NSDate *openTimestamp;
@end