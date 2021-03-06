//
//  RKBSONSerialization.m
//
//  Created by Paul Melnikow on 6/10/13.
//  Copyright (c) 2013 Paul Melnikow. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "RKBSONSerialization.h"
#import "ObjCBSON.h"

@implementation RKBSONSerialization

+ (id)objectFromData:(NSData *)data error:(NSError **)error
{
    return [BSONDecoder decodeDictionaryWithData:data];
}

+ (NSData *)dataFromObject:(id)object error:(NSError **)error
{
    return [[BSONEncoder documentForObject:object] dataValue];
}

@end
