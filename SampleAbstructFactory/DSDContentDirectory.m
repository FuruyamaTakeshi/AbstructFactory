//
//  DSDContentDirectory.m
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DSDContentDirectory.h"

@implementation DSDContentDirectory
@synthesize items;

- (id)init {
    LOG_METHOD;
    self = [super init];
    if (!self) {
        return nil;
    }
    items = [[NSMutableArray array] retain];
    return self;
}

- (void)addChildren:(DSDComponent*)component {
    LOG_METHOD;
    [self.items addObject:component];
}

- (void)removeChildren:(DSDComponent*)component {
    LOG_METHOD;
    [self.items removeObject:component];
}

- (id)childAtIndex:(int)index {
    LOG_METHOD;
    return [items objectAtIndex:index];
}
@end
