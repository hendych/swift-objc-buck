//
//  MyModel.m
//  SwiftObjcBuck
//
//  Created by hendy.christianto on 24/01/19.
//

#import "MyModel.h"

@implementation MyModel

- (instancetype)initWithJson:(NSDictionary *)json {
    self = [super init];
    if (self) {
        _name = json[@"name"];
    }
    return self;
}

@end
