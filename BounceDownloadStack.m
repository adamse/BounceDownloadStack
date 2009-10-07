#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSMutableArray * args = [NSMutableArray arrayWithArray:[[NSProcessInfo processInfo] arguments]];
	
	if ([args count] > 1) {
		[args removeObjectAtIndex:0];
		[[NSDistributedNotificationCenter defaultCenter]
		 postNotificationName:@"com.apple.DownloadFileFinished" 
		 object:[args componentsJoinedByString:@" "]];
	} else {
		printf("Usage: %s path\n", argv[0]);
		printf("  path: must be an object in the toplevel of the stack folder\n");
	}

	[pool drain];
	return 0;
}
