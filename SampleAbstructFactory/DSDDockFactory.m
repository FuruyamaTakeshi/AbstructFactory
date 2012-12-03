//
//  DSDDockFactory.m
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DSDDockFactory.h"
#import "DSDDock.h"
@implementation DSDDockFactory
- (DSDDock*)createProduct {
    LOG_METHOD;
    return [[[DSDDock alloc] init] autorelease];
}
@end
