In Objective-C, a common yet subtle error involves the misuse of retain and release cycles, particularly when dealing with delegates or blocks.  For instance, if a delegate is retained by the delegating object and the delegate also retains the delegating object (creating a circular reference), neither object will ever be deallocated, leading to memory leaks.  Another instance is when a block captures self, and the block is retained for a longer duration than self's intended lifecycle.  This will prevent self from being deallocated resulting in a memory leak.