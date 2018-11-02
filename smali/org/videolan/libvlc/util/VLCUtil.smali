.class public Lorg/videolan/libvlc/util/VLCUtil;
.super Ljava/lang/Object;
.source "VLCUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/VLCUtil$ElfData;,
        Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    }
.end annotation


# static fields
.field private static final CPU_archs:[Ljava/lang/String;

.field private static final ELF_HEADER_SIZE:I = 0x34

.field private static final EM_386:I = 0x3

.field private static final EM_AARCH64:I = 0xb7

.field private static final EM_ARM:I = 0x28

.field private static final EM_MIPS:I = 0x8

.field private static final EM_X86_64:I = 0x3e

.field private static final SECTION_HEADER_SIZE:I = 0x28

.field private static final SHT_ARM_ATTRIBUTES:I = 0x70000003

.field public static final TAG:Ljava/lang/String; = "VLC/LibVLC/Util"

.field private static errorMsg:Ljava/lang/String;

.field private static isCompatible:Z

.field private static machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 46
    sput-object v0, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 47
    sput-boolean v2, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 279
    sput-object v0, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    .line 346
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*Pre-v4"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "*v4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*v4T"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "v5T"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "v5TE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "v5TEJ"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "v6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "v6KZ"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "v6T2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "v6K"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "v7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "*v6-M"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*v6S-M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*v7E-M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*v8"

    aput-object v2, v0, v1

    sput-object v0, Lorg/videolan/libvlc/util/VLCUtil;->CPU_archs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getABIList()[Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v2, v5, :cond_1

    move v1, v3

    .line 65
    .local v1, "hasABI2":Z
    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :goto_1
    new-array v0, v2, [Ljava/lang/String;

    .line 66
    .local v0, "abis":[Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 67
    if-eqz v1, :cond_0

    .line 68
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v2, v0, v3

    .line 69
    :cond_0
    return-object v0

    .end local v0    # "abis":[Ljava/lang/String;
    .end local v1    # "hasABI2":Z
    :cond_1
    move v1, v4

    .line 64
    goto :goto_0

    .restart local v1    # "hasABI2":Z
    :cond_2
    move v2, v3

    .line 65
    goto :goto_1
.end method

.method public static getABIList21()[Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 55
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 56
    .local v0, "abis":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 57
    :cond_0
    invoke-static {}, Lorg/videolan/libvlc/util/VLCUtil;->getABIList()[Ljava/lang/String;

    move-result-object v0

    .line 58
    .end local v0    # "abis":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static getMachineSpecs()Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    return-object v0
.end method

.method private static getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 505
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    .line 506
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-char v0, v2

    .line 507
    .local v0, "c":C
    if-nez v0, :cond_1

    .line 511
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 509
    .restart local v0    # "c":C
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getThumbnail(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;II)[B
    .locals 4
    .param p0, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i_width"    # I
    .param p3, "i_height"    # I

    .prologue
    .line 532
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".iso"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dvdsimple://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 534
    :cond_0
    new-instance v1, Lorg/videolan/libvlc/Media;

    invoke-direct {v1, p0, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    .line 535
    .local v1, "media":Lorg/videolan/libvlc/Media;
    invoke-static {v1, p2, p3}, Lorg/videolan/libvlc/util/VLCUtil;->getThumbnail(Lorg/videolan/libvlc/Media;II)[B

    move-result-object v0

    .line 536
    .local v0, "bytes":[B
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->release()V

    .line 537
    return-object v0
.end method

.method public static getThumbnail(Lorg/videolan/libvlc/Media;II)[B
    .locals 1
    .param p0, "media"    # Lorg/videolan/libvlc/Media;
    .param p1, "i_width"    # I
    .param p2, "i_height"    # I

    .prologue
    .line 541
    const-string v0, ":no-audio"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 542
    const-string v0, ":no-spu"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 543
    const-string v0, ":no-osd"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 544
    const-string v0, ":input-fast-seek"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 545
    invoke-static {p0, p1, p2}, Lorg/videolan/libvlc/util/VLCUtil;->nativeGetThumbnail(Lorg/videolan/libvlc/Media;II)[B

    move-result-object v0

    return-object v0
.end method

.method private static getUleb128(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 515
    const/4 v1, 0x0

    .line 518
    .local v1, "ret":I
    :cond_0
    shl-int/lit8 v1, v1, 0x7

    .line 519
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 520
    .local v0, "c":I
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 521
    and-int/lit16 v2, v0, 0x80

    if-gtz v2, :cond_0

    .line 523
    return v1
.end method

.method public static hasCompatibleCPU(Landroid/content/Context;)Z
    .locals 33
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    if-nez v30, :cond_0

    sget-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    if-eqz v30, :cond_1

    :cond_0
    sget-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 272
    :goto_0
    return v30

    .line 76
    :cond_1
    const/16 v22, 0x0

    .local v22, "hasNeon":Z
    const/16 v20, 0x0

    .local v20, "hasFpu":Z
    const/16 v18, 0x0

    .local v18, "hasArmV6":Z
    const/16 v23, 0x0

    .line 77
    .local v23, "hasPlaceHolder":Z
    const/16 v19, 0x0

    .local v19, "hasArmV7":Z
    const/16 v21, 0x0

    .local v21, "hasMips":Z
    const/16 v24, 0x0

    .local v24, "hasX86":Z
    const/16 v25, 0x0

    .local v25, "is64bits":Z
    const/16 v26, 0x0

    .line 78
    .local v26, "isIntel":Z
    const/high16 v4, -0x40800000    # -1.0f

    .line 79
    .local v4, "bogoMIPS":F
    const/16 v29, 0x0

    .line 83
    .local v29, "processors":I
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x15

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 84
    invoke-static {}, Lorg/videolan/libvlc/util/VLCUtil;->getABIList21()[Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "abis":[Ljava/lang/String;
    :goto_1
    array-length v0, v3

    move/from16 v31, v0

    const/16 v30, 0x0

    :goto_2
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    aget-object v2, v3, v30

    .line 89
    .local v2, "abi":Ljava/lang/String;
    const-string v32, "x86"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 90
    const/16 v24, 0x1

    .line 88
    :cond_2
    :goto_3
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 86
    .end local v2    # "abi":Ljava/lang/String;
    .end local v3    # "abis":[Ljava/lang/String;
    :cond_3
    invoke-static {}, Lorg/videolan/libvlc/util/VLCUtil;->getABIList()[Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "abis":[Ljava/lang/String;
    goto :goto_1

    .line 91
    .restart local v2    # "abi":Ljava/lang/String;
    :cond_4
    const-string v32, "x86_64"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 92
    const/16 v24, 0x1

    .line 93
    const/16 v25, 0x1

    goto :goto_3

    .line 94
    :cond_5
    const-string v32, "armeabi-v7a"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 95
    const/16 v19, 0x1

    .line 96
    const/16 v18, 0x1

    goto :goto_3

    .line 97
    :cond_6
    const-string v32, "armeabi"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 98
    const/16 v18, 0x1

    goto :goto_3

    .line 99
    :cond_7
    const-string v32, "arm64-v8a"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 100
    const/16 v22, 0x1

    .line 101
    const/16 v18, 0x1

    .line 102
    const/16 v19, 0x1

    .line 103
    const/16 v25, 0x1

    goto :goto_3

    .line 108
    .end local v2    # "abi":Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    .line 109
    .local v9, "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    const/4 v12, 0x0

    .line 110
    .local v12, "elfHasX86":Z
    const/4 v10, 0x0

    .line 111
    .local v10, "elfHasArm":Z
    const/4 v11, 0x0

    .line 112
    .local v11, "elfHasMips":Z
    const/4 v13, 0x0

    .line 113
    .local v13, "elfIs64bits":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/videolan/libvlc/util/VLCUtil;->searchLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/io/File;

    move-result-object v27

    .line 114
    .local v27, "lib":Ljava/io/File;
    if-eqz v27, :cond_18

    invoke-static/range {v27 .. v27}, Lorg/videolan/libvlc/util/VLCUtil;->readLib(Ljava/io/File;)Lorg/videolan/libvlc/util/VLCUtil$ElfData;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 115
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_9

    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v30, v0

    const/16 v31, 0x3e

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    :cond_9
    const/4 v12, 0x1

    .line 116
    :goto_4
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v30, v0

    const/16 v31, 0x28

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_a

    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v30, v0

    const/16 v31, 0xb7

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    :cond_a
    const/4 v10, 0x1

    .line 117
    :goto_5
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v30, v0

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    const/4 v11, 0x1

    .line 118
    :goto_6
    iget-boolean v13, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->is64bits:Z

    .line 120
    const-string v31, "VLC/LibVLC/Util"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ELF ABI = "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    if-eqz v10, :cond_15

    const-string v30, "arm"

    :goto_7
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v32, ", "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    if-eqz v13, :cond_17

    const-string v30, "64bits"

    :goto_8
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v30, "VLC/LibVLC/Util"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ELF arch = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v30, "VLC/LibVLC/Util"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ELF fpu = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-boolean v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_fpu:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_9
    const/4 v15, 0x0

    .line 130
    .local v15, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 132
    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v16, Ljava/io/FileReader;

    const-string v30, "/proc/cpuinfo"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .local v16, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 135
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    :cond_b
    :goto_a
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, "line":Ljava/lang/String;
    if-eqz v28, :cond_20

    .line 136
    const-string v30, "AArch64"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 137
    const/16 v19, 0x1

    .line 138
    const/16 v18, 0x1

    .line 158
    :cond_c
    :goto_b
    const-string v30, "neon"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_d

    const-string v30, "asimd"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 159
    :cond_d
    const/16 v22, 0x1

    .line 160
    :cond_e
    const-string v30, "vfp"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_f

    const-string v30, "Features"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_10

    const-string v30, "fp"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 161
    :cond_f
    const/16 v20, 0x1

    .line 162
    :cond_10
    const-string v30, "processor"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 163
    add-int/lit8 v29, v29, 0x1

    .line 164
    :cond_11
    const/16 v30, 0x0

    cmpg-float v30, v4, v30

    if-gez v30, :cond_b

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    const-string v31, "bogomips"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 165
    const-string v30, ":"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v5

    .line 167
    .local v5, "bogo_parts":[Ljava/lang/String;
    const/16 v30, 0x1

    :try_start_3
    aget-object v30, v5, v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result v4

    goto/16 :goto_a

    .line 115
    .end local v5    # "bogo_parts":[Ljava/lang/String;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v16    # "fileReader":Ljava/io/FileReader;
    .end local v28    # "line":Ljava/lang/String;
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 116
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 117
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 120
    :cond_15
    if-eqz v12, :cond_16

    const-string v30, "x86"

    goto/16 :goto_7

    :cond_16
    const-string v30, "mips"

    goto/16 :goto_7

    :cond_17
    const-string v30, "32bits"

    goto/16 :goto_8

    .line 125
    :cond_18
    const-string v30, "VLC/LibVLC/Util"

    const-string v31, "WARNING: Unable to read libvlcjni.so; cannot check device ABI!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 139
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v28    # "line":Ljava/lang/String;
    :cond_19
    :try_start_4
    const-string v30, "ARMv7"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 140
    const/16 v19, 0x1

    .line 141
    const/16 v18, 0x1

    goto/16 :goto_b

    .line 142
    :cond_1a
    const-string v30, "ARMv6"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 143
    const/16 v18, 0x1

    goto/16 :goto_b

    .line 146
    :cond_1b
    const-string v30, "clflush size"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1c

    .line 147
    const/16 v24, 0x1

    goto/16 :goto_b

    .line 148
    :cond_1c
    const-string v30, "GenuineIntel"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 149
    const/16 v24, 0x1

    goto/16 :goto_b

    .line 150
    :cond_1d
    const-string v30, "placeholder"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 151
    const/16 v23, 0x1

    goto/16 :goto_b

    .line 152
    :cond_1e
    const-string v30, "CPU implementer"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1f

    const-string v30, "0x69"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 153
    const/16 v26, 0x1

    goto/16 :goto_b

    .line 156
    :cond_1f
    const-string v30, "microsecond timers"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_17
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-result v30

    if-eqz v30, :cond_c

    .line 157
    const/16 v21, 0x1

    goto/16 :goto_b

    .line 168
    .restart local v5    # "bogo_parts":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 169
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/high16 v4, -0x40800000    # -1.0f

    goto/16 :goto_a

    .line 175
    .end local v5    # "bogo_parts":[Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_20
    if-eqz v7, :cond_21

    .line 177
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 179
    :cond_21
    :goto_c
    if-eqz v16, :cond_38

    .line 181
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .line 184
    .end local v16    # "fileReader":Ljava/io/FileReader;
    .end local v28    # "line":Ljava/lang/String;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :cond_22
    :goto_d
    if-nez v29, :cond_23

    .line 185
    const/16 v29, 0x1

    .line 187
    :cond_23
    const/16 v30, 0x1

    sput-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 189
    if-eqz v9, :cond_28

    .line 191
    if-eqz v12, :cond_30

    if-nez v24, :cond_30

    .line 194
    if-eqz v23, :cond_2f

    if-eqz v26, :cond_2f

    .line 195
    const-string v30, "VLC/LibVLC/Util"

    const-string v31, "Emulated armv7 detected, trying to launch x86 libraries"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_24
    :goto_e
    if-eqz v11, :cond_31

    if-nez v21, :cond_31

    .line 206
    const-string v30, "MIPS build on non-MIPS device"

    sput-object v30, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 207
    const/16 v30, 0x0

    sput-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 213
    :cond_25
    :goto_f
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v30, v0

    const/16 v31, 0x28

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_26

    iget-object v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "v7"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_26

    if-nez v19, :cond_26

    .line 214
    const-string v30, "ARMv7 build on non-ARMv7 device"

    sput-object v30, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 215
    const/16 v30, 0x0

    sput-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 217
    :cond_26
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v30, v0

    const/16 v31, 0x28

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_27

    .line 218
    iget-object v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "v6"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_32

    if-nez v18, :cond_32

    .line 219
    const-string v30, "ARMv6 build on non-ARMv6 device"

    sput-object v30, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 220
    const/16 v30, 0x0

    sput-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 226
    :cond_27
    :goto_10
    if-eqz v13, :cond_28

    if-nez v25, :cond_28

    .line 227
    const-string v30, "64bits build on 32bits device"

    sput-object v30, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 228
    const/16 v30, 0x0

    sput-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 232
    :cond_28
    const/high16 v17, -0x40800000    # -1.0f

    .line 233
    .local v17, "frequency":F
    const/4 v15, 0x0

    .line 234
    const/4 v6, 0x0

    .line 235
    const-string v28, ""

    .line 237
    .restart local v28    # "line":Ljava/lang/String;
    :try_start_7
    new-instance v16, Ljava/io/FileReader;

    const-string v30, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 238
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :try_start_8
    new-instance v7, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 239
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .line 240
    if-eqz v28, :cond_29

    .line 241
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_13
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v30

    const/high16 v31, 0x447a0000    # 1000.0f

    div-float v17, v30, v31

    .line 248
    :cond_29
    if-eqz v7, :cond_2a

    .line 250
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    .line 252
    :cond_2a
    :goto_11
    if-eqz v16, :cond_37

    .line 254
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .line 259
    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :cond_2b
    :goto_12
    new-instance v30, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    invoke-direct/range {v30 .. v30}, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;-><init>()V

    sput-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    .line 260
    const-string v30, "VLC/LibVLC/Util"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "machineSpecs: hasArmV6: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", hasArmV7: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", hasX86: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", is64bits: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v18

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasArmV6:Z

    .line 263
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v19

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasArmV7:Z

    .line 264
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v20

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasFpu:Z

    .line 265
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v21

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasMips:Z

    .line 266
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v22

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasNeon:Z

    .line 267
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v24

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasX86:Z

    .line 268
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v25

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->is64bits:Z

    .line 269
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move-object/from16 v0, v30

    iput v4, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->bogoMIPS:F

    .line 270
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v29

    move-object/from16 v1, v30

    iput v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->processors:I

    .line 271
    sget-object v30, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v17

    move-object/from16 v1, v30

    iput v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->frequency:F

    .line 272
    sget-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    goto/16 :goto_0

    .line 182
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v17    # "frequency":F
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v30

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_d

    .line 173
    .end local v28    # "line":Ljava/lang/String;
    :catch_2
    move-exception v30

    .line 175
    :goto_13
    if-eqz v6, :cond_2c

    .line 177
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 179
    :cond_2c
    :goto_14
    if-eqz v15, :cond_22

    .line 181
    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_d

    .line 182
    :catch_3
    move-exception v30

    goto/16 :goto_d

    .line 175
    :catchall_0
    move-exception v30

    :goto_15
    if-eqz v6, :cond_2d

    .line 177
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 179
    :cond_2d
    :goto_16
    if-eqz v15, :cond_2e

    .line 181
    :try_start_f
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 182
    :cond_2e
    :goto_17
    throw v30

    .line 197
    :cond_2f
    const-string v30, "x86 build on non-x86 device"

    sput-object v30, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 198
    const/16 v30, 0x0

    sput-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    goto/16 :goto_e

    .line 200
    :cond_30
    if-eqz v10, :cond_24

    if-nez v18, :cond_24

    .line 201
    const-string v30, "ARM build on non ARM device"

    sput-object v30, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 202
    const/16 v30, 0x0

    sput-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    goto/16 :goto_e

    .line 208
    :cond_31
    if-eqz v10, :cond_25

    if-eqz v21, :cond_25

    .line 209
    const-string v30, "ARM build on MIPS device"

    sput-object v30, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 210
    const/16 v30, 0x0

    sput-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    goto/16 :goto_f

    .line 221
    :cond_32
    iget-boolean v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_fpu:Z

    move/from16 v30, v0

    if-eqz v30, :cond_27

    if-nez v20, :cond_27

    .line 222
    const-string v30, "FPU-enabled build on non-FPU device"

    sput-object v30, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 223
    const/16 v30, 0x0

    sput-boolean v30, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    goto/16 :goto_10

    .line 255
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v17    # "frequency":F
    .restart local v28    # "line":Ljava/lang/String;
    :catch_4
    move-exception v30

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_12

    .line 242
    :catch_5
    move-exception v14

    .line 243
    .local v14, "ex":Ljava/io/IOException;
    :goto_18
    :try_start_10
    const-string v30, "VLC/LibVLC/Util"

    const-string v31, "Could not find maximum CPU frequency!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 248
    if-eqz v6, :cond_33

    .line 250
    :try_start_11
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    .line 252
    :cond_33
    :goto_19
    if-eqz v15, :cond_2b

    .line 254
    :try_start_12
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_12

    .line 255
    :catch_6
    move-exception v30

    goto/16 :goto_12

    .line 244
    .end local v14    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v8

    .line 245
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_1a
    :try_start_13
    const-string v30, "VLC/LibVLC/Util"

    const-string v31, "Could not parse maximum CPU frequency!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v30, "VLC/LibVLC/Util"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failed to parse: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 248
    if-eqz v6, :cond_34

    .line 250
    :try_start_14
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 252
    :cond_34
    :goto_1b
    if-eqz v15, :cond_2b

    .line 254
    :try_start_15
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    goto/16 :goto_12

    .line 255
    :catch_8
    move-exception v30

    goto/16 :goto_12

    .line 248
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catchall_1
    move-exception v30

    :goto_1c
    if-eqz v6, :cond_35

    .line 250
    :try_start_16
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    .line 252
    :cond_35
    :goto_1d
    if-eqz v15, :cond_36

    .line 254
    :try_start_17
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11

    .line 255
    :cond_36
    :goto_1e
    throw v30

    .line 178
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v17    # "frequency":F
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v30

    goto/16 :goto_c

    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v16    # "fileReader":Ljava/io/FileReader;
    .end local v28    # "line":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v30

    goto/16 :goto_14

    :catch_b
    move-exception v31

    goto/16 :goto_16

    .line 182
    :catch_c
    move-exception v31

    goto/16 :goto_17

    .line 251
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v17    # "frequency":F
    .restart local v28    # "line":Ljava/lang/String;
    :catch_d
    move-exception v30

    goto/16 :goto_11

    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "ex":Ljava/io/IOException;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_e
    move-exception v30

    goto :goto_19

    .end local v14    # "ex":Ljava/io/IOException;
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_f
    move-exception v30

    goto :goto_1b

    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_10
    move-exception v31

    goto :goto_1d

    .line 255
    :catch_11
    move-exception v31

    goto :goto_1e

    .line 248
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v30

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto :goto_1c

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catchall_3
    move-exception v30

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto :goto_1c

    .line 244
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_12
    move-exception v8

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto :goto_1a

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_13
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto :goto_1a

    .line 242
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_14
    move-exception v14

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_18

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_15
    move-exception v14

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_18

    .line 175
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v17    # "frequency":F
    .end local v28    # "line":Ljava/lang/String;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catchall_4
    move-exception v30

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_15

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catchall_5
    move-exception v30

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_15

    .line 173
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_16
    move-exception v30

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_13

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_17
    move-exception v30

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_13

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v17    # "frequency":F
    .restart local v28    # "line":Ljava/lang/String;
    :cond_37
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_12

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v17    # "frequency":F
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :cond_38
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_d
.end method

.method private static native nativeGetThumbnail(Lorg/videolan/libvlc/Media;II)[B
.end method

.method private static readArmAttributes(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    .locals 13
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/4 v9, 0x1

    .line 446
    iget v10, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->sh_size:I

    new-array v2, v10, [B

    .line 447
    .local v2, "bytes":[B
    iget v10, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->sh_offset:I

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 448
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 451
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 452
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v10, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 456
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    const/16 v11, 0x41

    if-eq v10, v11, :cond_1

    .line 457
    const/4 v9, 0x0

    .line 500
    :cond_0
    return v9

    .line 460
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lez v10, :cond_0

    .line 461
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 462
    .local v6, "start_section":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 463
    .local v3, "length":I
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 464
    .local v8, "vendor":Ljava/lang/String;
    const-string v10, "aeabi"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 466
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v11, v6, v3

    if-ge v10, v11, :cond_0

    .line 467
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 468
    .local v5, "start":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 469
    .local v7, "tag":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 471
    .local v4, "size":I
    if-eq v7, v9, :cond_3

    .line 472
    add-int v10, v5, v4

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 477
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v11, v5, v4

    if-ge v10, v11, :cond_2

    .line 478
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 479
    const/4 v10, 0x6

    if-ne v7, v10, :cond_4

    .line 480
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 481
    .local v0, "arch":I
    sget-object v10, Lorg/videolan/libvlc/util/VLCUtil;->CPU_archs:[Ljava/lang/String;

    aget-object v10, v10, v0

    iput-object v10, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_arch:Ljava/lang/String;

    goto :goto_1

    .line 482
    .end local v0    # "arch":I
    :cond_4
    const/16 v10, 0x1b

    if-ne v7, v10, :cond_5

    .line 483
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    .line 484
    iput-boolean v9, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_fpu:Z

    goto :goto_1

    .line 489
    :cond_5
    rem-int/lit16 v7, v7, 0x80

    .line 490
    const/4 v10, 0x4

    if-eq v7, v10, :cond_6

    const/4 v10, 0x5

    if-eq v7, v10, :cond_6

    if-eq v7, v12, :cond_6

    if-le v7, v12, :cond_7

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_7

    .line 491
    :cond_6
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1

    .line 493
    :cond_7
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    goto :goto_1
.end method

.method private static readHeader(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    .locals 8
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 396
    const/16 v4, 0x34

    new-array v1, v4, [B

    .line 397
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 398
    aget-byte v4, v1, v2

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_0

    aget-byte v4, v1, v3

    const/16 v5, 0x45

    if-ne v4, v5, :cond_0

    aget-byte v4, v1, v6

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_0

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_0

    aget-byte v4, v1, v7

    if-eq v4, v3, :cond_1

    aget-byte v4, v1, v7

    if-eq v4, v6, :cond_1

    .line 403
    :cond_0
    const-string v3, "VLC/LibVLC/Util"

    const-string v4, "ELF header invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 419
    :goto_0
    return v3

    .line 407
    :cond_1
    aget-byte v4, v1, v7

    if-ne v4, v6, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->is64bits:Z

    .line 408
    const/4 v2, 0x5

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_3

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    iput-object v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->order:Ljava/nio/ByteOrder;

    .line 413
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 414
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 416
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    .line 417
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_shoff:I

    .line 418
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_shnum:I

    goto :goto_0

    .line 408
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1
.end method

.method private static readLib(Ljava/io/File;)Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 352
    const/4 v2, 0x0

    .line 354
    .local v2, "in":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .local v3, "in":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lorg/videolan/libvlc/util/VLCUtil$ElfData;-><init>(Lorg/videolan/libvlc/util/VLCUtil$1;)V

    .line 357
    .local v1, "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    invoke-static {v3, v1}, Lorg/videolan/libvlc/util/VLCUtil;->readHeader(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 386
    if-eqz v3, :cond_0

    .line 387
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    move-object v1, v4

    .line 391
    .end local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    :goto_1
    return-object v1

    .line 360
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_3
    iget v5, v1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sparse-switch v5, :sswitch_data_0

    .line 386
    if-eqz v3, :cond_2

    .line 387
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_2
    :goto_2
    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    move-object v1, v4

    .line 377
    goto :goto_1

    .line 386
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :sswitch_0
    if-eqz v3, :cond_3

    .line 387
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_3
    move-object v2, v3

    .line 365
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 367
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :sswitch_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 368
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 369
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    :try_start_7
    invoke-static {v2, v1}, Lorg/videolan/libvlc/util/VLCUtil;->readSection(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    if-nez v5, :cond_5

    .line 386
    if-eqz v2, :cond_4

    .line 387
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_4
    move-object v1, v4

    .line 370
    goto :goto_1

    .line 371
    :cond_5
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 372
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 373
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :try_start_a
    invoke-static {v3, v1}, Lorg/videolan/libvlc/util/VLCUtil;->readArmAttributes(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v5

    if-nez v5, :cond_7

    .line 386
    if-eqz v3, :cond_6

    .line 387
    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_6
    :goto_5
    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    move-object v1, v4

    .line 374
    goto :goto_1

    .line 386
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :cond_7
    if-eqz v3, :cond_8

    .line 387
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_8
    :goto_6
    move-object v2, v3

    .line 379
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 380
    .end local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 386
    if-eqz v2, :cond_9

    .line 387
    :try_start_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_8
    move-object v1, v4

    .line 391
    goto :goto_1

    .line 382
    :catch_1
    move-exception v0

    .line 383
    .local v0, "e":Ljava/io/IOException;
    :goto_9
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 386
    if-eqz v2, :cond_9

    .line 387
    :try_start_10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_8

    .line 388
    :catch_2
    move-exception v5

    goto :goto_8

    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 386
    :goto_a
    if-eqz v2, :cond_a

    .line 387
    :try_start_11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 389
    :cond_a
    :goto_b
    throw v4

    .line 388
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v5

    goto :goto_0

    :catch_4
    move-exception v4

    goto :goto_3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v5

    goto :goto_4

    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v5

    goto :goto_5

    :catch_7
    move-exception v5

    goto :goto_2

    :catch_8
    move-exception v4

    goto :goto_6

    .end local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v5

    goto :goto_8

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v5

    goto :goto_b

    .line 385
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_a

    .line 382
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 380
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3e -> :sswitch_0
        0xb7 -> :sswitch_0
    .end sparse-switch
.end method

.method private static readSection(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    .locals 6
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    const/16 v4, 0x28

    new-array v1, v4, [B

    .line 424
    .local v1, "bytes":[B
    iget v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_shoff:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 426
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_shnum:I

    if-ge v2, v4, :cond_1

    .line 427
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 430
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 431
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 433
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 434
    .local v3, "sh_type":I
    const v4, 0x70000003

    if-eq v3, v4, :cond_0

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_0
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iput v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->sh_offset:I

    .line 438
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iput v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->sh_size:I

    .line 439
    const/4 v4, 0x1

    .line 442
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "sh_type":I
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static searchLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/io/File;
    .locals 8
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 319
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 320
    const-string v6, "java.library.path"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "property":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 329
    .end local v3    # "property":Ljava/lang/String;
    .local v2, "libraryPaths":[Ljava/lang/String;
    :goto_0
    aget-object v6, v2, v5

    if-nez v6, :cond_3

    .line 330
    const-string v5, "VLC/LibVLC/Util"

    const-string v6, "can\'t find library path"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 342
    :cond_0
    :goto_1
    return-object v0

    .line 323
    .end local v2    # "libraryPaths":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    .line 324
    .restart local v2    # "libraryPaths":[Ljava/lang/String;
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isGingerbreadOrLater()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 325
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    aput-object v6, v2, v5

    goto :goto_0

    .line 327
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    goto :goto_0

    .line 336
    :cond_3
    array-length v6, v2

    :goto_2
    if-ge v5, v6, :cond_5

    aget-object v1, v2, v5

    .line 337
    .local v1, "libraryPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v7, "libvlcjni.so"

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v0, "lib":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_0

    .line 336
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 341
    .end local v0    # "lib":Ljava/io/File;
    .end local v1    # "libraryPath":Ljava/lang/String;
    :cond_5
    const-string v5, "VLC/LibVLC/Util"

    const-string v6, "WARNING: Can\'t find shared library"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 342
    goto :goto_1
.end method
