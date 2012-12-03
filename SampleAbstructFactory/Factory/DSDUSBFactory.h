//
//  DSDUSBFactory.h
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSDInputSourceFactory.h"
#import "DSDInputSource.h"
#import "DSDUSB.h"
/**
 * @brief　USBファクトリ具象クラス（DSDInputSourceFactoryを継承）
 */
@interface DSDUSBFactory : DSDInputSourceFactory

- (DSDUSB*)createProduct;
@end
