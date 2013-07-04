RKBSONSerialization
===================

A RestKit [BSON][] serialization implementation using [ObjCMongoDB][]

The root object in a BSON object must be a dictionary, so if you're sending an array you need to wrap it in a dictionary. If you're pushing an arary, you can use the 'rootKeyPath' property of `RKRequestDescriptor` to automatically wrap the objects into a dictionary.

## Installation

Install via Cocoapods or add the source files to your project. If you are
installing directly from source, you will also need to obtain a copy of the BSON
part of [ObjCMongoDB][].

You must register the serialization in your app delegate (or wherever you handle RestKit setup).

You must also register the no-op formatter provided to prevent RestKit from formatting your dates as strings before they reach the serializer. You can either do this globally as shown below, or on individual RKObjectMapping objects.

``` objc
#import "RKBSONSerialization.h"
#import "RKBSONDateFormatter.h"

[RKMIMETypeSerialization registerClass:[RKBSONSerialization class] forMIMEType:@"application/bson"];
[RKObjectMapping setPreferredDateFormatter:[[RKBSONDateFormatter alloc] init]];

```

## Acknowledgements

Based on [RKJSONKitSerialization][].

[ObjCMongoDB]: https://github.com/paulmelnikow/ObjCMongoDB
[BSON]: http://bsonspec.org/
[RKJSONKitSerialization]: https://github.com/RestKit/RKJSONKitSerialization