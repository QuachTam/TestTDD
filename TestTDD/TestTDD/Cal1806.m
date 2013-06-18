//
//  Cal1806.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Cal1806.h"

@implementation Cal1806
+(NSInteger)cal:(NSString*)strValue{
    if ([strValue length]==0) {
        return 0;
    }
    return [strValue integerValue];
}
@end
