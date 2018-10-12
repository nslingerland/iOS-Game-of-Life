#import "XCUIApplicationImpl.h"

@interface XCUIApplication(XCUIApplicationPrivateMethods)
- (BOOL)running;
- (pid_t)processID;
- (NSArray<NSString *> *)launchArguments;
- (NSDictionary<NSString *, NSString *> *)launchEnvironment;
- (BOOL)suspended;

- (NSArray<NSString *> *)_combinedLaunchArguments;
- (NSDictionary<NSString *, NSString *> *)_combinedLaunchEnvironment;

@property(readonly) XCUIApplicationImpl *applicationImpl;
@property BOOL prefersPlatformLauncher;
@end
