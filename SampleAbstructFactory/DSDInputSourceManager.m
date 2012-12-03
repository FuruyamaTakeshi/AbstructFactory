//
//  DSDInputSourceManager.m
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DSDInputSourceManager.h"
#import "DSDInputSourceFactory.h"
#import "DSDInputSource.h"

@implementation DSDInputSourceManager
@synthesize inputsources;
static DSDInputSourceManager* _sharedInstance = nil;

+ (DSDInputSourceManager*)sharedManager {
    if(!_sharedInstance) {
        _sharedInstance = [[DSDInputSourceManager alloc] init];
    }
    return _sharedInstance;
}

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    inputsources = [[NSMutableArray array] retain];
    return self;
}

- (void)addInputSource:(NSString*)name {
    DSDInputSourceFactory* factory = [DSDInputSourceFactory factoryWithName:name];
    DSDinputSource* inputsource = [factory createProduct];
    [self.inputsources addObject:inputsource];
}

- (void)description {
    NSEnumerator* enumerator = [self.inputsources objectEnumerator];
    id obj;
    while (obj = [enumerator nextObject]) {
        [obj play];
    }
}
@end
