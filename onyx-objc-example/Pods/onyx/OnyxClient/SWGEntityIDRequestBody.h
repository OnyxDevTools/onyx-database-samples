#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol SWGEntityIDRequestBody
@end

@interface SWGEntityIDRequestBody : SWGObject

/* String value of Entity Identifier [optional]
 */
@property(nonatomic) NSObject* _id;
/* Entity Type in package format ex.  com.onyx.my.EntityName [optional]
 */
@property(nonatomic) NSString* type;

@end
