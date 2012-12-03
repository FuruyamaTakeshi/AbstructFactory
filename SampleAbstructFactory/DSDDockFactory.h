//
//  DSDDockFactory.h
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSDInputSourceFactory.h"
@class DSDDock;
/**
 * @brief　Dockファクトリ具象クラス（DSDInputSourceFactoryを継承）
 */
@interface DSDDockFactory : DSDInputSourceFactory
- (DSDDock*)createProduct;
@end
