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
void MREP_2998643D26A24FF2BDF490713FAF73C1(void *, void *);
void MREP_C4195C0F11384A8D910D6753B27E0E05(void *, void *);
void MREP_ED77ADCE8CB54D849234F965912E9BC8(void *, void *);
void MREP_FE0769C131D242E8B635180427A37F85(void *, void *);
void MREP_B40120020E194D4F929D60F7E18FCE72(void *, void *);
void MREP_F67F31DC2F05407393C4ABE0E7042DD3(void *, void *);
void MREP_0B501817BEF94D46819F2437A9CF1A00(void *, void *);
void MREP_88B40E493B8D4DA29DDE0B28C5E42F6F(void *, void *);
void MREP_F5BEF4120D3D4805BBAF6E7B41BE7A87(void *, void *);
void MREP_6BBF411D4931483BBF3ACE6C90AB2699(void *, void *);
void MREP_044388E6B4DD4F8AB2398A34B6253CA9(void *, void *);
void MREP_494297DDD9DA463FBFD006307E58E222(void *, void *);
void MREP_FA1173020D4143F182F950B5A610E6DB(void *, void *);
void MREP_591B1F7BFCF14FA585626F24791EF364(void *, void *);
void MREP_724374A23ABE4C779CFD114B9610B66D(void *, void *);
void MREP_CCFE672D17104CD88AD73BEEA62B44CF(void *, void *);
void MREP_6E6C1FFF2939458AB44580B998E809EF(void *, void *);
void MREP_834AC9BFEAB04033BB6EC4BCBBD18580(void *, void *);
void MREP_21C2A069EB174DAB98BC21F2C9C8F244(void *, void *);
void MREP_C23B27E636D5435CA1B0F6F142A87FF7(void *, void *);
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
MREP_2998643D26A24FF2BDF490713FAF73C1(self, 0);
MREP_C4195C0F11384A8D910D6753B27E0E05(self, 0);
MREP_ED77ADCE8CB54D849234F965912E9BC8(self, 0);
MREP_FE0769C131D242E8B635180427A37F85(self, 0);
MREP_B40120020E194D4F929D60F7E18FCE72(self, 0);
MREP_F67F31DC2F05407393C4ABE0E7042DD3(self, 0);
MREP_0B501817BEF94D46819F2437A9CF1A00(self, 0);
MREP_88B40E493B8D4DA29DDE0B28C5E42F6F(self, 0);
MREP_F5BEF4120D3D4805BBAF6E7B41BE7A87(self, 0);
MREP_6BBF411D4931483BBF3ACE6C90AB2699(self, 0);
MREP_044388E6B4DD4F8AB2398A34B6253CA9(self, 0);
MREP_494297DDD9DA463FBFD006307E58E222(self, 0);
MREP_FA1173020D4143F182F950B5A610E6DB(self, 0);
MREP_591B1F7BFCF14FA585626F24791EF364(self, 0);
MREP_724374A23ABE4C779CFD114B9610B66D(self, 0);
MREP_CCFE672D17104CD88AD73BEEA62B44CF(self, 0);
MREP_6E6C1FFF2939458AB44580B998E809EF(self, 0);
MREP_834AC9BFEAB04033BB6EC4BCBBD18580(self, 0);
MREP_21C2A069EB174DAB98BC21F2C9C8F244(self, 0);
MREP_C23B27E636D5435CA1B0F6F142A87FF7(self, 0);
        retval = UIApplicationMain(argc, argv, nil, @"AppDelegate");
        rb_exit(retval);
    }
    catch (...) {
	rb_rb2oc_exc_handler();
    }
    [pool release];
    return retval;
}
