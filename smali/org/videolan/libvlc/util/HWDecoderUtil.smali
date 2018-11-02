.class public Lorg/videolan/libvlc/util/HWDecoderUtil;
.super Ljava/lang/Object;
.source "HWDecoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;,
        Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;,
        Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;,
        Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;
    }
.end annotation


# static fields
.field public static final HAS_SUBTITLES_SURFACE:Z

.field private static final sAudioOutputBySOCList:[Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;

.field private static final sBlacklistedDecoderBySOCList:[Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

.field private static final sDecoderBySOCList:[Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

.field private static final sSystemPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isGingerbreadOrLater()Z

    move-result v0

    sput-boolean v0, Lorg/videolan/libvlc/util/HWDecoderUtil;->HAS_SUBTITLES_SURFACE:Z

    .line 64
    new-array v0, v8, [Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    new-instance v1, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.product.board"

    const-string v3, "MSM8225"

    sget-object v4, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.product.board"

    const-string v3, "hawaii"

    sget-object v4, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v1, v0, v7

    sput-object v0, Lorg/videolan/libvlc/util/HWDecoderUtil;->sBlacklistedDecoderBySOCList:[Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    .line 72
    const/16 v0, 0x15

    new-array v0, v0, [Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    new-instance v1, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.product.brand"

    const-string v3, "SEMC"

    sget-object v4, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.board.platform"

    const-string v3, "msm7627"

    sget-object v4, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.product.brand"

    const-string v3, "Amazon"

    sget-object v4, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->MEDIACODEC:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "omap3"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "rockchip"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "rk29"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "msm7630"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "s5pc"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "montblanc"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "exdroid"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "sun6i"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "exynos4"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->MEDIACODEC:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "omap4"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "tegra"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "tegra3"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "msm8660"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "exynos5"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "rk30"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "rk31"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.board.platform"

    const-string v4, "mv88de3100"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.hardware"

    const-string v4, "mt83"

    sget-object v5, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/videolan/libvlc/util/HWDecoderUtil;->sDecoderBySOCList:[Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    .line 117
    new-array v0, v8, [Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;

    new-instance v1, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;

    const-string v2, "ro.product.brand"

    const-string v3, "Amazon"

    sget-object v4, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;

    const-string v2, "ro.product.manufacturer"

    const-string v3, "Amazon"

    sget-object v4, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;)V

    aput-object v1, v0, v7

    sput-object v0, Lorg/videolan/libvlc/util/HWDecoderUtil;->sAudioOutputBySOCList:[Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/videolan/libvlc/util/HWDecoderUtil;->sSystemPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioOutputFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;
    .locals 6

    .prologue
    .line 165
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isGingerbreadOrLater()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    sget-object v2, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->AUDIOTRACK:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 175
    .local v0, "aoutBySOC":Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;
    .local v1, "prop":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 168
    .end local v0    # "aoutBySOC":Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;
    .end local v1    # "prop":Ljava/lang/String;
    :cond_0
    sget-object v3, Lorg/videolan/libvlc/util/HWDecoderUtil;->sAudioOutputBySOCList:[Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;

    array-length v4, v3

    const/4 v2, 0x0

    .restart local v0    # "aoutBySOC":Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;
    .restart local v1    # "prop":Ljava/lang/String;
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 169
    iget-object v5, v0, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;->key:Ljava/lang/String;

    .end local v1    # "prop":Ljava/lang/String;
    invoke-static {v5}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getSystemPropertyCached(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "prop":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 171
    iget-object v5, v0, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;->value:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    iget-object v2, v0, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutputBySOC;->aout:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    goto :goto_0

    .line 168
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    :cond_2
    sget-object v2, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    goto :goto_0
.end method

.method public static getDecoderFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 134
    sget-object v4, Lorg/videolan/libvlc/util/HWDecoderUtil;->sBlacklistedDecoderBySOCList:[Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    array-length v5, v4

    move v3, v2

    .local v0, "decBySOC":Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;
    .local v1, "prop":Ljava/lang/String;
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 135
    iget-object v6, v0, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;->key:Ljava/lang/String;

    .end local v1    # "prop":Ljava/lang/String;
    invoke-static {v6}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getSystemPropertyCached(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1    # "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 137
    iget-object v6, v0, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;->value:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    iget-object v2, v0, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;->dec:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    .line 157
    :goto_1
    return-object v2

    .line 134
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isJellyBeanMR2OrLater()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    sget-object v2, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    goto :goto_1

    .line 148
    :cond_2
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isHoneycombOrLater()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    sget-object v3, Lorg/videolan/libvlc/util/HWDecoderUtil;->sDecoderBySOCList:[Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 150
    iget-object v5, v0, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;->key:Ljava/lang/String;

    invoke-static {v5}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getSystemPropertyCached(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_3

    .line 152
    iget-object v5, v0, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;->value:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    iget-object v2, v0, Lorg/videolan/libvlc/util/HWDecoderUtil$DecoderBySOC;->dec:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    goto :goto_1

    .line 149
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 157
    :cond_4
    sget-object v2, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->UNKNOWN:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    goto :goto_1
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 190
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 191
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v6, "android.os.SystemProperties"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 192
    .local v0, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    .line 193
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v6, "get"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 194
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 195
    .local v5, "params":[Ljava/lang/Object;
    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 196
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v6, p1

    .line 197
    goto :goto_0
.end method

.method private static getSystemPropertyCached(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v1, Lorg/videolan/libvlc/util/HWDecoderUtil;->sSystemPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 182
    const-string v1, "none"

    invoke-static {p0, v1}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    sget-object v1, Lorg/videolan/libvlc/util/HWDecoderUtil;->sSystemPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    return-object v0
.end method
