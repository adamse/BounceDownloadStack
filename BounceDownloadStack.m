#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
		
	[[NSDistributedNotificationCenter defaultCenter]
		postNotificationName:@"com.apple.DownloadFileFinished" 
		object:[[[NSProcessInfo processInfo] arguments] objectAtIndex: 1]];
	
    [pool drain];
    return 0;
}
