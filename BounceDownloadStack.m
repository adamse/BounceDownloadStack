#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSArray * args = [[NSProcessInfo processInfo] arguments];
	
	if ([args count] > 1) {
		[[NSDistributedNotificationCenter defaultCenter]
		 postNotificationName:@"com.apple.DownloadFileFinished" 
		 object:[args objectAtIndex: 1]];
	}
	
    [pool drain];
    return 0;
}
