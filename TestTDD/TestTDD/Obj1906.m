//
//  Obj1906.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/19/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Obj1906.h"

@implementation Obj1906
+(NSInteger)cal:(NSString*)strValue{
    return 3;
    if ([strValue length]==0) {
        return 0;
    }
    return [strValue integerValue];
}
@end
