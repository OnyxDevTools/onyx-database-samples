#import "SWGQueryCriteria.h"

@implementation SWGQueryCriteria

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"attribute": @"attribute", @"operator": @"operator", @"type": @"type", @"dateValue": @"dateValue", @"longValue": @"longValue", @"integerValue": @"integerValue", @"booleanValue": @"booleanValue", @"doubleValue": @"doubleValue", @"stringValue": @"stringValue", @"dateValueList": @"dateValueList", @"longValueList": @"longValueList", @"integerValueList": @"integerValueList", @"doubleValueList": @"doubleValueList", @"stringValueList": @"stringValueList", @"andCriteria": @"andCriteria", @"orCriteria": @"orCriteria" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"attribute", @"operator", @"type", @"dateValue", @"longValue", @"integerValue", @"booleanValue", @"doubleValue", @"stringValue", @"dateValueList", @"longValueList", @"integerValueList", @"doubleValueList", @"stringValueList", @"andCriteria", @"orCriteria"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
