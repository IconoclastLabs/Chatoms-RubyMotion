#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_2F247AADA03D44C5A8831E74889D2876(void *, void *);
void MREP_57F4D8B0070B44AC83EEAD6C36AD55E0(void *, void *);
void MREP_E8EB33A1D16C4088988FB13FC40C76D2(void *, void *);
void MREP_803D160FCA3D43DEB92D394CDB936FAC(void *, void *);
void MREP_B7150FA8F6D0446D96CE26AC7E3179B1(void *, void *);
void MREP_EC408D74B384441D89CD1E61708C617A(void *, void *);
void MREP_97ADA0C7F6A34B899A6DD4D4C6A2EDCB(void *, void *);
void MREP_3C8B651BA5AA43ADA384E76C5B753F90(void *, void *);
void MREP_5EA0DAA210BC41E48B55908465CEF8BC(void *, void *);
void MREP_3697AF582B34423794876277FC3C7B9D(void *, void *);
void MREP_F4278F5407E24BD1A9BD93A320EE9594(void *, void *);
void MREP_06FF861C8A3C4F8BBB333632C1C89253(void *, void *);
void MREP_75EEF23C9ABA4CC5B5F84B41BB1CB2F7(void *, void *);
void MREP_FDDA4E25AEAF4927BD9CFB1E03037F4D(void *, void *);
void MREP_231BA4DEEC73482F91E64BB184F4CA34(void *, void *);
void MREP_DB2EB4E757AC44E389AA3DC3A4B99915(void *, void *);
void MREP_8D264ED580804D479E21847FB3E718A4(void *, void *);
void MREP_E77EDC67D5264C6CA149985FC624CC75(void *, void *);
void MREP_0178E314A27E41E3810BC7B2B67A3D4C(void *, void *);
void MREP_C444C99567504C709DD76736939094BE(void *, void *);
}
int
main(int argc, char **argv)
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    const char *progname = argv[0];
    ruby_init();
    ruby_init_loadpath();
    ruby_script(progname);
    int retval = 0;
    try {
        void *self = rb_vm_top_self();
MREP_2F247AADA03D44C5A8831E74889D2876(self, 0);
MREP_57F4D8B0070B44AC83EEAD6C36AD55E0(self, 0);
MREP_E8EB33A1D16C4088988FB13FC40C76D2(self, 0);
MREP_803D160FCA3D43DEB92D394CDB936FAC(self, 0);
MREP_B7150FA8F6D0446D96CE26AC7E3179B1(self, 0);
MREP_EC408D74B384441D89CD1E61708C617A(self, 0);
MREP_97ADA0C7F6A34B899A6DD4D4C6A2EDCB(self, 0);
MREP_3C8B651BA5AA43ADA384E76C5B753F90(self, 0);
MREP_5EA0DAA210BC41E48B55908465CEF8BC(self, 0);
MREP_3697AF582B34423794876277FC3C7B9D(self, 0);
MREP_F4278F5407E24BD1A9BD93A320EE9594(self, 0);
MREP_06FF861C8A3C4F8BBB333632C1C89253(self, 0);
MREP_75EEF23C9ABA4CC5B5F84B41BB1CB2F7(self, 0);
MREP_FDDA4E25AEAF4927BD9CFB1E03037F4D(self, 0);
MREP_231BA4DEEC73482F91E64BB184F4CA34(self, 0);
MREP_DB2EB4E757AC44E389AA3DC3A4B99915(self, 0);
MREP_8D264ED580804D479E21847FB3E718A4(self, 0);
MREP_E77EDC67D5264C6CA149985FC624CC75(self, 0);
MREP_0178E314A27E41E3810BC7B2B67A3D4C(self, 0);
MREP_C444C99567504C709DD76736939094BE(self, 0);
        retval = UIApplicationMain(argc, argv, nil, @"AppDelegate");
        rb_exit(retval);
    }
    catch (...) {
	rb_rb2oc_exc_handler();
    }
    [pool release];
    return retval;
}
