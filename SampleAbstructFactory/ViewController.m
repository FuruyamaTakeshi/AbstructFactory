//
//  ViewController.m
//  SampleAbstructFactory
//
//  Created by FuruyamaTakeshi on 12/04/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

#import "DSDInputSourceManager.h"
#import "DSDInputSourceFactory.h"
#import "DSDInputSource.h"

@implementation ViewController
@synthesize inputsources;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    LOG_METHOD;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    DSDInputSourceManager* inputMgr =[DSDInputSourceManager sharedManager];
    [inputMgr addInputSource:@"DSDUSB"];
    [inputMgr addInputSource:@"DSDDock"];
    
    [inputMgr description];

    DSDInputSourceFactory* abstFactory = [DSDInputSourceFactory factoryWithName:@"DSDUSB"];
    DSDinputSource* inputsource = [abstFactory createProduct];
    
    self.inputsources = [NSMutableArray arrayWithCapacity:0];
    [self.inputsources addObject:inputsource];
    
    abstFactory = [DSDInputSourceFactory factoryWithName:@"DSDDock"];
    inputsource = [abstFactory createProduct];
    [self.inputsources addObject:inputsource];
    
    NSEnumerator* enumerator = [self.inputsources objectEnumerator];
    id obj;
    while (obj = [enumerator nextObject]) {
        [obj methodA];
    }
    
    [[inputsources objectAtIndex:0] play];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    LOG_METHOD;
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    LOG_METHOD;
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    LOG_METHOD;
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    LOG_METHOD;
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
