#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol SWGQueryResultResponseBody
@end

@interface SWGQueryResultResponseBody : SWGObject

/* Number of results that were calculated during query execute [optional]
 */
@property(nonatomic) NSNumber* maxResults;
/* Number of results returned [optional]
 */
@property(nonatomic) NSNumber* results;

@property(nonatomic) NSArray* /* NSObject */ resultList;

@end
