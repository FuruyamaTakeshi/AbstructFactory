//
//  DSDComponent.m
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DSDComponent.h"

@implementation DSDComponent
@synthesize identifier;
@synthesize urlString;
@synthesize title;
@synthesize link;

- (id)init {
    LOG_METHOD;
    self = [super init];
    if (!self) {
        return nil;
    }
    CFUUIDRef uuid;
    uuid = CFUUIDCreate(NULL);
    identifier = (NSString*)CFUUIDCreateString(NULL, uuid);
    CFRelease(uuid);
    return self;
}
@end
