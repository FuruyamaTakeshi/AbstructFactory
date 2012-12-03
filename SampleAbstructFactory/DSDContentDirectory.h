//
//  DSDContentDirectory.h
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSDComponent.h"
/**
 * @brief Compositeパターン(Composite)
 */
@interface DSDContentDirectory : DSDComponent

@property (nonatomic, retain)NSMutableArray* items;

- (void)addChildren:(DSDComponent*)component;
- (void)removeChildren:(DSDComponent*)component;
- (id)childAtIndex:(int)index;
@end
