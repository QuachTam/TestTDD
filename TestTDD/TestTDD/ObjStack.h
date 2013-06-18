//
//  ObjStack.h
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/17/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjStack : NSObject{
    NSMutableArray *arrayValue;
}
+(int)countSize;
+(int)pushValue:(NSString*)strValue;
@end
