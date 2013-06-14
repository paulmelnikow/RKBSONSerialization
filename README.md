RKBSONSerialization
===================

A RestKit [BSON][] serialization implementation using [ObjCMongoDB][]

The root object in a BSON object must be a dictionary, so if you're sending an array you need to wrap it in a dictionary. If you're pushing an arary, you can use the 'rootKeyPath' property of `RKRequestDescriptor` to automatically wrap the objects into a dictionary.

## Installation

Install via Cocoapods or add the source files to your project. If you are
installing directly from source, you will also need to obtain a copy of the BSON
part of [ObjCMongoDB][].

Once installed, register the serialization in your app delegate (or wherever you handle RestKit setup):

``` objc
#import "RKBSONSerialization.h"

[RKMIMETypeSerialization registerClass:[RKBSONSerialization class] forMIMEType:@"application/bson"];

```

Note that you may register the class for more than one MIME Type or use an `NSRegularExpression` that matches the MIME Type that you wish to register. For more details, review the [API Documentation](http://restkit.org/api/latest/Classes/RKMIMETypeSerialization.html).

## Acknowledgements

Based on [RKJSONKitSerialization][].

[ObjCMongoDB]: https://github.com/paulmelnikow/ObjCMongoDB
[BSON]: http://bsonspec.org/
[RKJSONKitSerialization]: https://github.com/RestKit/RKJSONKitSerialization