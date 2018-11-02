.class public final Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;
.super Ljava/lang/Object;
.source "VideoFormatSelectorUtil.java"


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 206
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 207
    .local v0, "displaySize":Landroid/graphics/Point;
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 208
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 216
    :goto_0
    return-object v0

    .line 209
    :cond_0
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 210
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    .line 211
    :cond_1
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 212
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 234
    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 229
    return-void
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 222
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 223
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 224
    return-void
.end method

.method private static getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 239
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 240
    return-void
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 4
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    if-eqz p0, :cond_0

    if-le p3, p4, :cond_1

    move v3, v1

    :goto_0
    if-le p1, p2, :cond_2

    :goto_1
    if-eq v3, v1, :cond_0

    .line 178
    move v0, p1

    .line 179
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 180
    move p2, v0

    .line 183
    .end local v0    # "tempViewportWidth":I
    :cond_0
    mul-int v1, p3, p2

    mul-int v2, p4, p1

    if-lt v1, v2, :cond_3

    .line 185
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p1, p4

    invoke-static {v2, p3}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 188
    :goto_2
    return-object v1

    :cond_1
    move v3, v2

    .line 176
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 188
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p2, p3

    invoke-static {v2, p4}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method private static getViewportSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    const-string v2, "BRAVIA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 202
    :goto_0
    return-object v1

    .line 201
    :cond_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 202
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0
.end method

.method private static isFormatPlayable(Lcom/google/android/exoplayer/chunk/Format;[Ljava/lang/String;ZI)Z
    .locals 7
    .param p0, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p1, "allowedContainerMimeTypes"    # [Ljava/lang/String;
    .param p2, "filterHdFormats"    # Z
    .param p3, "maxDecodableFrameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    if-eqz p2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    const/16 v3, 0x500

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    const/16 v3, 0x2d0

    if-ge v2, v3, :cond_0

    .line 154
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v2, :cond_5

    .line 155
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "videoMediaMimeType":Ljava/lang/String;
    sget v2, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    const-string v2, "video/x-unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 157
    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->frameRate:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v6, p0, Lcom/google/android/exoplayer/chunk/Format;->frameRate:F

    .line 158
    .local v6, "frameRate":F
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v3, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    float-to-double v4, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecUtil;->isSizeAndRateSupportedV21(Ljava/lang/String;ZIID)Z

    move-result v1

    goto :goto_0

    .line 157
    .end local v6    # "frameRate":F
    :cond_3
    const/high16 v6, 0x41f00000    # 30.0f

    goto :goto_1

    .line 162
    :cond_4
    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v3, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int/2addr v2, v3

    if-gt v2, p3, :cond_0

    .line 167
    .end local v0    # "videoMediaMimeType":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZII)[I
    .locals 14
    .param p1, "allowedContainerMimeTypes"    # [Ljava/lang/String;
    .param p2, "filterHdFormats"    # Z
    .param p3, "orientationMayChange"    # Z
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "ZZII)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "formatWrappers":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/FormatWrapper;>;"
    const v7, 0x7fffffff

    .line 96
    .local v7, "maxVideoPixelsToRetain":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v9, "selectedIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/android/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v6

    .line 100
    .local v6, "maxDecodableFrameSize":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 101
    .local v4, "formatWrapperCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 102
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer/chunk/FormatWrapper;

    invoke-interface {v11}, Lcom/google/android/exoplayer/chunk/FormatWrapper;->getFormat()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v3

    .line 103
    .local v3, "format":Lcom/google/android/exoplayer/chunk/Format;
    move/from16 v0, p2

    invoke-static {v3, p1, v0, v6}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->isFormatPlayable(Lcom/google/android/exoplayer/chunk/Format;[Ljava/lang/String;ZI)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v11, :cond_0

    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v11, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 111
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v12, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v11, v12}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v8

    .line 113
    .local v8, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v12, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int v10, v11, v12

    .line 114
    .local v10, "videoPixels":I
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v12, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    const v13, 0x3f7ae148    # 0.98f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    if-lt v11, v12, :cond_0

    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    iget v12, v8, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    const v13, 0x3f7ae148    # 0.98f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    if-lt v11, v12, :cond_0

    if-ge v10, v7, :cond_0

    .line 117
    move v7, v10

    .line 101
    .end local v8    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v10    # "videoPixels":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    .end local v3    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_1
    const v11, 0x7fffffff

    if-eq v7, v11, :cond_3

    .line 127
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    :goto_1
    if-ltz v5, :cond_3

    .line 128
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer/chunk/FormatWrapper;

    invoke-interface {v11}, Lcom/google/android/exoplayer/chunk/FormatWrapper;->getFormat()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v3

    .line 129
    .restart local v3    # "format":Lcom/google/android/exoplayer/chunk/Format;
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v11, :cond_2

    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v11, :cond_2

    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v12, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int/2addr v11, v12

    if-le v11, v7, :cond_2

    .line 131
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 127
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 136
    .end local v3    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_3
    invoke-static {v9}, Lcom/google/android/exoplayer/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v11

    return-object v11
.end method

.method public static selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "allowedContainerMimeTypes"    # [Ljava/lang/String;
    .param p3, "filterHdFormats"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "Z)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "formatWrappers":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/FormatWrapper;>;"
    invoke-static {p0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getViewportSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    .line 60
    .local v6, "viewportSize":Landroid/graphics/Point;
    const/4 v3, 0x1

    iget v4, v6, Landroid/graphics/Point;->x:I

    iget v5, v6, Landroid/graphics/Point;->y:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZII)[I

    move-result-object v0

    return-object v0
.end method
