#import <objc/runtime.h>

typedef id (*fwdIMP)(id self, SEL _cmd, ...);

#define FBIvarCast(object, name, type)                                                                                 \
(*(type *)(void *)&(                                                                                                 \
(char *)(__bridge void *)object)[ivar_getOffset(class_getInstanceVariable(object_getClass(object), #name))])
#define FBIvar(object, name) FBIvarCast(object, name, id const)
