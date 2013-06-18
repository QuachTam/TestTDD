//
//  ObjStack.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/17/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "ObjStack.h"

@implementation ObjStack
- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        arrayValue = [[NSMutableArray alloc] init];
    };
    return self;
}
+(int)countSize{
    return 0;
}
+(int)pushValue:(NSString*)strValue{
    return 1;
}
@end
