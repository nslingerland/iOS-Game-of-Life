//#import "XCUIApplicationImpl.h"

@interface XCUIApplicationImpl
- (void)terminate;
- (void)_waitForValidPID;
@end

@interface XCUIApplication(XCUIApplicationPrivateMethods)
@property(readonly) XCUIApplicationImpl *applicationImpl;
@end
