//
//  NASyncModel+rest.m
//  SK3
//
//  Created by nashibao on 2012/10/26.
//  Copyright (c) 2012年 s-cubism. All rights reserved.
//

#import "NSManagedObject+restdriver.h"

#import "NSManagedObjectContext+na.h"

#import "NSManagedObject+json.h"

@implementation NSManagedObject (restdriver)

+ (id<NARestDriverProtocol>)restDriver{
    return nil;
}


+ (Class)restMapperClass{
    return [NARestMapper class];
}

+ (NARestMapper *) restMapper{
    static NARestMapper *__rest_mapper__ = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __rest_mapper__ = [[[self restMapperClass] alloc] init];
    });
    return __rest_mapper__;
}

+ (NSString *)restName{
    return nil;
}

+ (NSString *)restModelName{
    return [self restName];
}

+ (NSString *)restEndpoint{
    return @"/api/";
}

+ (NSString *)restEntityName{
    return NSStringFromClass([self class]);
}

+ (NSString *)restCallbackName{
    return [self restName];
}

+ (void)prepareData:(id)data context:(NSManagedObjectContext *)context{
}

- (void)updateByJSON:(id)json context:(NSManagedObjectContext *)context{
    [self updateByJSON:json];
}

@end
