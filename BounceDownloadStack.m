#import <Foundation/Foundation.h>
#import <Foundation/NSDistributedNotificationCenter.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	[[NSDistributedNotificationCenter defaultCenter]
		postNotificationName:@"com.apple.DownloadFileFinished" 
		object:@"/Users/adam/Downloads/asdf"];
	
    // insert code here...
    NSLog(@"Download complete!");
    [pool drain];
    return 0;
}
