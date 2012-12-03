//
//  DSDInputSourceFactory.m
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DSDInputSourceFactory.h"
#import "DSDUSBFactory.h"
#import "DSDDockFactory.h"
@implementation DSDInputSourceFactory

+ (DSDInputSourceFactory*)factoryWithName:(NSString *)name {
    LOG_METHOD;
    if ([name isEqualToString:@"DSDUSB"]) {
        return [[[DSDUSBFactory alloc] init] autorelease];
    }
    
    if ([name isEqualToString:@"DSDDock"]){
        return [[[DSDDockFactory alloc] init] autorelease];
    }
    return nil;
}

- (DSDinputSource*)createProduct{
    return nil;
}
@end
