//
//  DSDComponent.h
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 * @brief Compositeパターン(Component)
 */
@interface DSDComponent : NSObject
@property (nonatomic, readonly)NSString* identifier;


@property(nonatomic, retain)NSString* title;
@property(nonatomic, retain)NSString* link;

@property (nonatomic, retain)NSString* urlString;

@end
