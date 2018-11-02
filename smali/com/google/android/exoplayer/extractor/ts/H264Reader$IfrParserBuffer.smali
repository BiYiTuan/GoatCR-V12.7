.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IfrParserBuffer"
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80

.field private static final NOT_SET:I = -0x1


# instance fields
.field private ifrData:[B

.field private ifrLength:I

.field private isFilling:Z

.field private final scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private sliceType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    .line 234
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 235
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 236
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v5, -0x1

    .line 273
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isFilling:Z

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    sub-int v1, p3, p2

    .line 277
    .local v1, "readLength":I
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    array-length v2, v2

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 278
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    .line 283
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    iget v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->reset([BI)V

    .line 284
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 286
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->peekExpGolombCodedNumLength()I

    move-result v0

    .line 287
    .local v0, "len":I
    if-eq v0, v5, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 294
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->peekExpGolombCodedNumLength()I

    move-result v0

    .line 295
    if-eq v0, v5, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->sliceType:I

    .line 301
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isFilling:Z

    goto :goto_0
.end method

.method public getSliceType()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->sliceType:I

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->sliceType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isFilling:Z

    .line 243
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->sliceType:I

    .line 245
    return-void
.end method

.method public startNalUnit(I)V
    .locals 1
    .param p1, "nalUnitType"    # I

    .prologue
    const/4 v0, 0x1

    .line 259
    if-ne p1, v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 261
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isFilling:Z

    .line 263
    :cond_0
    return-void
.end method
