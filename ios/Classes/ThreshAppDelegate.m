/**
* MIT License
*
* Copyright (c) 2020 ManBang Group
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
*/

#import "ThreshAppDelegate.h"

@interface ThreshAppDelegate ()

@property (nonatomic, strong) id<ThreshDataLoader> loader;

@property (nonatomic, strong) id<ThreshLogger> logger;

@property (nonatomic, strong) id<ThreshNativeBridge> nativeBridge;

@property (nonatomic, strong) FlutterEngineGroup *engineGroup;

@end

@implementation ThreshAppDelegate

+ (instancetype)sharedInstance {
    
    static ThreshAppDelegate *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [ThreshAppDelegate new];
    });
    return instance;
}

- (void)startThreshWithLogger:(id<ThreshLogger>)logger engineGroup:(nonnull FlutterEngineGroup *)engineGroup {
    if (logger) {
        _logger = logger;
    }
    if (engineGroup) {
        _engineGroup = engineGroup;
    }
}

@end
