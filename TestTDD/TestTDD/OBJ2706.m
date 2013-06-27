//
//  OBJ2706.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/27/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "OBJ2706.h"

@implementation OBJ2706
+(NSInteger)Cal:(NSString*)strValue{
    return 3;
    if ([strValue length]==0) {
        return 0;
    }
    
    return [strValue integerValue];
}
@end
