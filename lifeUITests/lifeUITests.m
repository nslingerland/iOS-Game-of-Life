//
//  lifeUITests.m
//  lifeUITests
//
//  Created by Nathan Slingerland on 10/10/18.
//  Copyright © 2018 Kemal Enver. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Hack.h"
#import "XCUIApplication+Private.h"

#define BUNDLE_ID @"com.kemalenver.life"

@interface lifeUITests : XCTestCase
@end

@implementation lifeUITests
XCUIApplication *app;
XCUIApplicationImpl *appImpl;

- (void)setUp {
  // Put setup code here. This method is called before the invocation of each test method in the class.

  // In UI tests it is usually best to stop immediately when a failure occurs.
  self.continueAfterFailure = NO;
  
  // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.

  app = [[XCUIApplication alloc] initWithBundleIdentifier:BUNDLE_ID];
  appImpl = [app applicationImpl];
  
  [appImpl terminate];
  
  // TODO: Indicate that setup is complete and polling has begun
  NSLog(@"Waiting for a valid PID for %@...", BUNDLE_ID);
  [appImpl _waitForValidPID]; // waits up to 1 minute
  
  [app activate];
  
  // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
  [appImpl terminate];
  
  // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
  sleep(10);
  
  // Use recording to get started writing UI tests.
  // Use XCTAssert and related functions to verify your tests produce the correct results.
}

@end
