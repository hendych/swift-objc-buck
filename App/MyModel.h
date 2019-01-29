//
//  MyModel.h
//  SwiftObjcBuck
//
//  Created by hendy.christianto on 24/01/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyModel : NSObject

@property(nonatomic, strong) NSString *name;

- (instancetype)initWithJson:(NSDictionary *)json NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
