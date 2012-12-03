//
//  DSDInputSourceManager.h
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSDInputSource.h"
/**
 * @brief　InputSource管理クラス（Singleton)
 */
@interface DSDInputSourceManager : NSObject
@property(nonatomic, retain)NSMutableArray* inputsources;
+ (DSDInputSourceManager*)sharedManager;
- (void)addInputSource:(NSString*)name;
- (void)description;
@end
