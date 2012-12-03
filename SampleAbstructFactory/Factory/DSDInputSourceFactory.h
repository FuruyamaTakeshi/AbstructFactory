//
//  DSDInputSourceFactory.h
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DSDinputSource;
/**
 * @brief 抽象クラス
 */
@interface DSDInputSourceFactory : NSObject
+ (DSDInputSourceFactory*)factoryWithName:(NSString*)name;
- (DSDinputSource*)createProduct;
@end
