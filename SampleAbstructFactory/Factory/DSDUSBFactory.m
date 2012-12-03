//
//  DSDUSBFactory.m
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DSDUSBFactory.h"
#import "DSDUSB.h"

@implementation DSDUSBFactory
- (DSDUSB*)createProduct {
    LOG_METHOD;
    return [[[DSDUSB alloc] init] autorelease];
}
@end
