#import "SWGQuery.h"

@implementation SWGQuery

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"entityType": @"entityType", @"firstRow": @"firstRow", @"maxResults": @"maxResults", @"resultsCount": @"resultsCount", @"partition": @"partition", @"selections": @"selections", @"updates": @"updates", @"criteria": @"criteria", @"queryOrders": @"queryOrders" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"entityType", @"firstRow", @"maxResults", @"resultsCount", @"partition", @"selections", @"updates", @"criteria", @"queryOrders"];

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
