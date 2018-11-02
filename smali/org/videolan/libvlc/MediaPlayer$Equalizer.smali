.class public Lorg/videolan/libvlc/MediaPlayer$Equalizer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Equalizer"
.end annotation


# instance fields
.field private mInstance:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeNew()V

    .line 202
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeNewFromPreset(I)V

    .line 206
    return-void
.end method

.method public static create()Lorg/videolan/libvlc/MediaPlayer$Equalizer;
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Equalizer;

    invoke-direct {v0}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;-><init>()V

    return-object v0
.end method

.method public static createFromPreset(I)Lorg/videolan/libvlc/MediaPlayer$Equalizer;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 233
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Equalizer;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;-><init>(I)V

    return-object v0
.end method

.method public static getBandCount()I
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeGetBandCount()I

    move-result v0

    return v0
.end method

.method public static getBandFrequency(I)F
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 272
    invoke-static {p0}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeGetBandFrequency(I)F

    move-result v0

    return v0
.end method

.method public static getPresetCount()I
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeGetPresetCount()I

    move-result v0

    return v0
.end method

.method public static getPresetName(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 253
    invoke-static {p0}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeGetPresetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeGetAmp(I)F
.end method

.method private static native nativeGetBandCount()I
.end method

.method private static native nativeGetBandFrequency(I)F
.end method

.method private native nativeGetPreAmp()F
.end method

.method private static native nativeGetPresetCount()I
.end method

.method private static native nativeGetPresetName(I)Ljava/lang/String;
.end method

.method private native nativeNew()V
.end method

.method private native nativeNewFromPreset(I)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetAmp(IF)Z
.end method

.method private native nativeSetPreAmp(F)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 215
    return-void

    .line 213
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAmp(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeGetAmp(I)F

    move-result v0

    return v0
.end method

.method public getPreAmp()F
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeGetPreAmp()F

    move-result v0

    return v0
.end method

.method public setAmp(IF)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "amp"    # F

    .prologue
    .line 318
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeSetAmp(IF)Z

    move-result v0

    return v0
.end method

.method public setPreAmp(F)Z
    .locals 1
    .param p1, "preamp"    # F

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->nativeSetPreAmp(F)Z

    move-result v0

    return v0
.end method
