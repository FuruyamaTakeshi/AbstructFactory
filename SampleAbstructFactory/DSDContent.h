//
//  DSDContent.h
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSDComponent.h"
/**
 * @brief　Compositeパターン(leaf)
 */
@interface DSDContent : DSDComponent
@property(nonatomic, getter = isRead) BOOL read;
@property(nonatomic, retain)NSString* itemDesctription;
@property(nonatomic, retain)NSString* pubDate;
@end
