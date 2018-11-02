.class public Lorg/videolan/libvlc/Media;
.super Lorg/videolan/libvlc/VLCObject;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/Media$Slave;,
        Lorg/videolan/libvlc/Media$UnknownTrack;,
        Lorg/videolan/libvlc/Media$SubtitleTrack;,
        Lorg/videolan/libvlc/Media$VideoTrack;,
        Lorg/videolan/libvlc/Media$AudioTrack;,
        Lorg/videolan/libvlc/Media$Track;,
        Lorg/videolan/libvlc/Media$ParsedStatus;,
        Lorg/videolan/libvlc/Media$Parse;,
        Lorg/videolan/libvlc/Media$State;,
        Lorg/videolan/libvlc/Media$Meta;,
        Lorg/videolan/libvlc/Media$Type;,
        Lorg/videolan/libvlc/Media$EventListener;,
        Lorg/videolan/libvlc/Media$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject",
        "<",
        "Lorg/videolan/libvlc/Media$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARSE_STATUS_INIT:I = 0x0

.field private static final PARSE_STATUS_PARSED:I = 0x2

.field private static final PARSE_STATUS_PARSING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LibVLC/Media"

.field private static final URI_AUTHORIZED_CHARS:Ljava/lang/String; = "!\'()*"


# instance fields
.field private mCodecOptionSet:Z

.field private mDuration:J

.field private final mNativeMetas:[Ljava/lang/String;

.field private mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

.field private mParseStatus:I

.field private mState:I

.field private mSubItems:Lorg/videolan/libvlc/MediaList;

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V
    .locals 4
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 337
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 310
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    .line 311
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    .line 312
    iput v3, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    .line 313
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    .line 314
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    .line 315
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    .line 316
    iput v2, p0, Lorg/videolan/libvlc/Media;->mState:I

    .line 317
    iput v2, p0, Lorg/videolan/libvlc/Media;->mType:I

    .line 318
    iput-boolean v3, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    .line 338
    invoke-static {p2}, Lorg/videolan/libvlc/Media;->locationFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/videolan/libvlc/Media;->nativeNewFromLocation(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 339
    iput-object p2, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    .line 340
    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 348
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 310
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    .line 311
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    .line 312
    iput v3, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    .line 313
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    .line 314
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    .line 315
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    .line 316
    iput v2, p0, Lorg/videolan/libvlc/Media;->mState:I

    .line 317
    iput v2, p0, Lorg/videolan/libvlc/Media;->mType:I

    .line 318
    iput-boolean v3, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    .line 349
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/Media;->nativeNewFromFd(Lorg/videolan/libvlc/LibVLC;Ljava/io/FileDescriptor;)V

    .line 350
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetMrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/libvlc/Media;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    .line 351
    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
    .locals 4
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 326
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 310
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    .line 311
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    .line 312
    iput v3, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    .line 313
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    .line 314
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    .line 315
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    .line 316
    iput v2, p0, Lorg/videolan/libvlc/Media;->mState:I

    .line 317
    iput v2, p0, Lorg/videolan/libvlc/Media;->mType:I

    .line 318
    iput-boolean v3, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    .line 327
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/Media;->nativeNewFromPath(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetMrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/libvlc/Media;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    .line 329
    return-void
.end method

.method protected constructor <init>(Lorg/videolan/libvlc/MediaList;I)V
    .locals 4
    .param p1, "ml"    # Lorg/videolan/libvlc/MediaList;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 358
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 310
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    .line 311
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    .line 312
    iput v3, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    .line 313
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    .line 314
    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    .line 315
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    .line 316
    iput v2, p0, Lorg/videolan/libvlc/Media;->mState:I

    .line 317
    iput v2, p0, Lorg/videolan/libvlc/Media;->mType:I

    .line 318
    iput-boolean v3, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    .line 359
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaList;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaList is null or released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaList;->isLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaList should be locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/Media;->nativeNewFromMediaList(Lorg/videolan/libvlc/MediaList;I)V

    .line 364
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetMrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/libvlc/Media;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    .line 365
    return-void
.end method

.method private static UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "mrl"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 375
    .local v0, "array":[C
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 378
    aget-char v1, v0, v3

    .line 379
    .local v1, "c":C
    const/16 v5, 0x25

    if-ne v1, v5, :cond_0

    .line 380
    array-length v5, v0

    sub-int/2addr v5, v3

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 382
    :try_start_0
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x2

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([CII)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 383
    .local v2, "hex":I
    const-string v5, "!\'()*"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 384
    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    add-int/lit8 v3, v3, 0x2

    .line 377
    .end local v2    # "hex":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :catch_0
    move-exception v5

    .line 393
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 396
    .end local v1    # "c":C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method

.method private static createAudioTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;II)Lorg/videolan/libvlc/Media$Track;
    .locals 12
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "originalCodec"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "profile"    # I
    .param p4, "level"    # I
    .param p5, "bitrate"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "channels"    # I
    .param p9, "rate"    # I

    .prologue
    .line 201
    new-instance v0, Lorg/videolan/libvlc/Media$AudioTrack;

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lorg/videolan/libvlc/Media$AudioTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IILorg/videolan/libvlc/Media$1;)V

    return-object v0
.end method

.method private static createSlaveFromNative(IILjava/lang/String;)Lorg/videolan/libvlc/Media$Slave;
    .locals 1
    .param p0, "type"    # I
    .param p1, "priority"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Lorg/videolan/libvlc/Media$Slave;

    invoke-direct {v0, p0, p1, p2}, Lorg/videolan/libvlc/Media$Slave;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method private static createSubtitleTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/videolan/libvlc/Media$Track;
    .locals 11
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "originalCodec"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "profile"    # I
    .param p4, "level"    # I
    .param p5, "bitrate"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "encoding"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Lorg/videolan/libvlc/Media$SubtitleTrack;

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lorg/videolan/libvlc/Media$SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media$1;)V

    return-object v0
.end method

.method private static createUnknownTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)Lorg/videolan/libvlc/Media$Track;
    .locals 10
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "originalCodec"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "profile"    # I
    .param p4, "level"    # I
    .param p5, "bitrate"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Lorg/videolan/libvlc/Media$UnknownTrack;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/videolan/libvlc/Media$UnknownTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media$1;)V

    return-object v0
.end method

.method private static createVideoTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIIIII)Lorg/videolan/libvlc/Media$Track;
    .locals 16
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "originalCodec"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "profile"    # I
    .param p4, "level"    # I
    .param p5, "bitrate"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "height"    # I
    .param p9, "width"    # I
    .param p10, "sarNum"    # I
    .param p11, "sarDen"    # I
    .param p12, "frameRateNum"    # I
    .param p13, "frameRateDen"    # I

    .prologue
    .line 234
    new-instance v0, Lorg/videolan/libvlc/Media$VideoTrack;

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v0 .. v15}, Lorg/videolan/libvlc/Media$VideoTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIIIIILorg/videolan/libvlc/Media$1;)V

    return-object v0
.end method

.method private static getMediaCodecModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isLolliPopOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mediacodec_ndk"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mediacodec_jni"

    goto :goto_0
.end method

.method private getTracks()[Lorg/videolan/libvlc/Media$Track;
    .locals 2

    .prologue
    .line 611
    monitor-enter p0

    .line 612
    :try_start_0
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    monitor-exit p0

    .line 620
    :goto_0
    return-object v1

    .line 614
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetTracks()[Lorg/videolan/libvlc/Media$Track;

    move-result-object v0

    .line 618
    .local v0, "tracks":[Lorg/videolan/libvlc/Media$Track;
    monitor-enter p0

    .line 619
    :try_start_2
    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    .line 620
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    monitor-exit p0

    goto :goto_0

    .line 621
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected static locationFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 405
    .local v0, "array":[C
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 407
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 408
    .local v1, "c":C
    const-string v5, "!\'()*"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 409
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 414
    .end local v1    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private native nativeAddOption(Ljava/lang/String;)V
.end method

.method private native nativeAddSlave(IILjava/lang/String;)V
.end method

.method private native nativeClearSlaves()V
.end method

.method private native nativeGetDuration()J
.end method

.method private native nativeGetMeta(I)Ljava/lang/String;
.end method

.method private native nativeGetMrl()Ljava/lang/String;
.end method

.method private native nativeGetSlaves()[Lorg/videolan/libvlc/Media$Slave;
.end method

.method private native nativeGetState()I
.end method

.method private native nativeGetTracks()[Lorg/videolan/libvlc/Media$Track;
.end method

.method private native nativeGetType()I
.end method

.method private native nativeNewFromFd(Lorg/videolan/libvlc/LibVLC;Ljava/io/FileDescriptor;)V
.end method

.method private native nativeNewFromLocation(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
.end method

.method private native nativeNewFromMediaList(Lorg/videolan/libvlc/MediaList;I)V
.end method

.method private native nativeNewFromPath(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
.end method

.method private native nativeParse(I)Z
.end method

.method private native nativeParseAsync(II)Z
.end method

.method private native nativeRelease()V
.end method

.method private declared-synchronized postParse()V
    .locals 2

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 516
    :goto_0
    monitor-exit p0

    return-void

    .line 510
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    .line 511
    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    .line 513
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    .line 514
    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/Media;->mType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addOption(Ljava/lang/String;)V
    .locals 1
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 737
    monitor-enter p0

    .line 738
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    if-nez v0, :cond_0

    const-string v0, ":codec="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    .line 740
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/Media;->nativeAddOption(Ljava/lang/String;)V

    .line 742
    return-void

    .line 740
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addSlave(Lorg/videolan/libvlc/Media$Slave;)V
    .locals 3
    .param p1, "slave"    # Lorg/videolan/libvlc/Media$Slave;

    .prologue
    .line 755
    iget v0, p1, Lorg/videolan/libvlc/Media$Slave;->type:I

    iget v1, p1, Lorg/videolan/libvlc/Media$Slave;->priority:I

    iget-object v2, p1, Lorg/videolan/libvlc/Media$Slave;->uri:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/videolan/libvlc/Media;->nativeAddSlave(IILjava/lang/String;)V

    .line 756
    return-void
.end method

.method public clearSlaves()V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeClearSlaves()V

    .line 763
    return-void
.end method

.method public getDuration()J
    .locals 6

    .prologue
    .line 454
    monitor-enter p0

    .line 455
    :try_start_0
    iget-wide v2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 456
    iget-wide v2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    monitor-exit p0

    .line 463
    :goto_0
    return-wide v2

    .line 457
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    const-wide/16 v2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetDuration()J

    move-result-wide v0

    .line 461
    .local v0, "duration":J
    monitor-enter p0

    .line 462
    :try_start_2
    iput-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    .line 463
    iget-wide v2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    monitor-exit p0

    goto :goto_0

    .line 464
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getMeta(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 654
    if-ltz p1, :cond_0

    const/16 v1, 0x19

    if-lt p1, v1, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-object v0

    .line 657
    :cond_1
    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    aget-object v0, v1, p1

    monitor-exit p0

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 660
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 661
    monitor-exit p0

    goto :goto_0

    .line 662
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/Media;->nativeGetMeta(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "meta":Ljava/lang/String;
    monitor-enter p0

    .line 666
    :try_start_2
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    aput-object v0, v1, p1

    .line 667
    monitor-exit p0

    goto :goto_0

    .line 668
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getSlaves()[Lorg/videolan/libvlc/Media$Slave;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 774
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetSlaves()[Lorg/videolan/libvlc/Media$Slave;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 473
    monitor-enter p0

    .line 474
    :try_start_0
    iget v1, p0, Lorg/videolan/libvlc/Media;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 475
    iget v1, p0, Lorg/videolan/libvlc/Media;->mState:I

    monitor-exit p0

    .line 482
    :goto_0
    return v1

    .line 476
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    const/4 v1, 0x7

    monitor-exit p0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetState()I

    move-result v0

    .line 480
    .local v0, "state":I
    monitor-enter p0

    .line 481
    :try_start_2
    iput v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    .line 482
    iget v1, p0, Lorg/videolan/libvlc/Media;->mState:I

    monitor-exit p0

    goto :goto_0

    .line 483
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getTrack(I)Lorg/videolan/libvlc/Media$Track;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 641
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->getTracks()[Lorg/videolan/libvlc/Media$Track;

    move-result-object v0

    .line 642
    .local v0, "tracks":[Lorg/videolan/libvlc/Media$Track;
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 643
    :cond_0
    const/4 v1, 0x0

    .line 644
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    goto :goto_0
.end method

.method public getTrackCount()I
    .locals 2

    .prologue
    .line 628
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->getTracks()[Lorg/videolan/libvlc/Media$Track;

    move-result-object v0

    .line 629
    .local v0, "tracks":[Lorg/videolan/libvlc/Media$Track;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 597
    monitor-enter p0

    .line 598
    :try_start_0
    iget v1, p0, Lorg/videolan/libvlc/Media;->mType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 599
    iget v1, p0, Lorg/videolan/libvlc/Media;->mType:I

    monitor-exit p0

    .line 606
    :goto_0
    return v1

    .line 600
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetType()I

    move-result v0

    .line 604
    .local v0, "type":I
    monitor-enter p0

    .line 605
    :try_start_2
    iput v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    .line 606
    iget v1, p0, Lorg/videolan/libvlc/Media;->mType:I

    monitor-exit p0

    goto :goto_0

    .line 607
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParsed()Z
    .locals 1

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onEventNative(IJF)Lorg/videolan/libvlc/Media$Event;
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # F

    .prologue
    .line 423
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 440
    :goto_0
    :pswitch_0
    :try_start_0
    new-instance v1, Lorg/videolan/libvlc/Media$Event;

    invoke-direct {v1, p1}, Lorg/videolan/libvlc/Media$Event;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v1

    .line 426
    :pswitch_1
    long-to-int v0, p2

    .line 427
    .local v0, "id":I
    if-ltz v0, :cond_0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 428
    :try_start_1
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 429
    :cond_0
    new-instance v1, Lorg/videolan/libvlc/Media$Event;

    invoke-direct {v1, p1, p2, p3}, Lorg/videolan/libvlc/Media$Event;-><init>(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 423
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 431
    :pswitch_2
    const-wide/16 v2, -0x1

    :try_start_2
    iput-wide v2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    goto :goto_0

    .line 434
    :pswitch_3
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->postParse()V

    .line 435
    new-instance v1, Lorg/videolan/libvlc/Media$Event;

    invoke-direct {v1, p1, p2, p3}, Lorg/videolan/libvlc/Media$Event;-><init>(IJ)V

    goto :goto_1

    .line 437
    :pswitch_4
    const/4 v1, -0x1

    iput v1, p0, Lorg/videolan/libvlc/Media;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic onEventNative(IJF)Lorg/videolan/libvlc/VLCEvent;
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/Media;->onEventNative(IJF)Lorg/videolan/libvlc/Media$Event;

    move-result-object v0

    return-object v0
.end method

.method protected onReleaseNative()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->release()V

    .line 781
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeRelease()V

    .line 782
    return-void
.end method

.method public parse()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->parse(I)Z

    move-result v0

    return v0
.end method

.method public parse(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "parse":Z
    monitor-enter p0

    .line 527
    :try_start_0
    iget v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    .line 528
    iget v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    .line 529
    const/4 v0, 0x1

    .line 531
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/Media;->nativeParse(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->postParse()V

    .line 534
    const/4 v1, 0x1

    .line 536
    :goto_0
    return v1

    .line 531
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 536
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseAsync()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->parseAsync(I)Z

    move-result v0

    return v0
.end method

.method public parseAsync(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 572
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/videolan/libvlc/Media;->parseAsync(II)Z

    move-result v0

    return v0
.end method

.method public parseAsync(II)Z
    .locals 2
    .param p1, "flags"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "parse":Z
    monitor-enter p0

    .line 563
    :try_start_0
    iget v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    .line 564
    iget v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    .line 565
    const/4 v0, 0x1

    .line 567
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/Media;->nativeParseAsync(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 567
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 568
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setDefaultMediaPlayerOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 723
    monitor-enter p0

    .line 724
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    .line 725
    .local v0, "codecOptionSet":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    .line 726
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    if-nez v0, :cond_0

    .line 728
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 729
    :cond_0
    return-void

    .line 726
    .end local v0    # "codecOptionSet":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setEventListener(Lorg/videolan/libvlc/Media$EventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/Media$EventListener;

    .prologue
    .line 418
    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V

    .line 419
    return-void
.end method

.method public setHWDecoderEnabled(ZZ)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 683
    if-eqz p1, :cond_1

    .line 684
    invoke-static {}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getDecoderFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    move-result-object v0

    .line 687
    .local v0, "decoder":Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;
    :goto_0
    sget-object v2, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-eq v0, v2, :cond_0

    sget-object v2, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->UNKNOWN:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-ne v0, v2, :cond_2

    if-nez p2, :cond_2

    .line 689
    :cond_0
    const-string v2, ":codec=all"

    invoke-virtual {p0, v2}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 716
    :goto_1
    return-void

    .line 684
    .end local v0    # "decoder":Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;
    :cond_1
    sget-object v0, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    goto :goto_0

    .line 702
    .restart local v0    # "decoder":Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;
    :cond_2
    const-string v2, ":file-caching=1500"

    invoke-virtual {p0, v2}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 703
    const-string v2, ":network-caching=1500"

    invoke-virtual {p0, v2}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":codec="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->MEDIACODEC:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-ne v0, v2, :cond_3

    .line 707
    invoke-static {}, Lorg/videolan/libvlc/Media;->getMediaCodecModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :goto_2
    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    goto :goto_1

    .line 708
    :cond_3
    sget-object v2, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-ne v0, v2, :cond_4

    .line 709
    const-string v2, "iomx,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 711
    :cond_4
    invoke-static {}, Lorg/videolan/libvlc/Media;->getMediaCodecModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",iomx,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public subItems()Lorg/videolan/libvlc/MediaList;
    .locals 2

    .prologue
    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->retain()Z

    .line 495
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    monitor-exit p0

    .line 502
    :goto_0
    return-object v1

    .line 497
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    new-instance v0, Lorg/videolan/libvlc/MediaList;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaList;-><init>(Lorg/videolan/libvlc/Media;)V

    .line 499
    .local v0, "subItems":Lorg/videolan/libvlc/MediaList;
    monitor-enter p0

    .line 500
    :try_start_1
    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    .line 501
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->retain()Z

    .line 502
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    monitor-exit p0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 497
    .end local v0    # "subItems":Lorg/videolan/libvlc/MediaList;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
