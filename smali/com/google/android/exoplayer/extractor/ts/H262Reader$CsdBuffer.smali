.class final Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/H262Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CsdBuffer"
.end annotation


# instance fields
.field public data:[B

.field private isFilling:Z

.field public length:I

.field private seenExtensionStartCode:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->data:[B

    .line 179
    return-void
.end method


# virtual methods
.method public onData([BII)V
    .locals 3
    .param p1, "newData"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 223
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    if-nez v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    sub-int v0, p3, p2

    .line 227
    .local v0, "readLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->data:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 228
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->data:[B

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    goto :goto_0
.end method

.method public onStartCode(II)Z
    .locals 3
    .param p1, "startCodeValue"    # I
    .param p2, "bytesAlreadyPassed"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 201
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    if-eqz v2, :cond_2

    .line 202
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->seenExtensionStartCode:Z

    if-nez v2, :cond_1

    const/16 v2, 0xb5

    if-ne p1, v2, :cond_1

    .line 203
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->seenExtensionStartCode:Z

    :cond_0
    :goto_0
    move v0, v1

    .line 212
    :goto_1
    return v0

    .line 205
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    sub-int/2addr v2, p2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    .line 206
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    goto :goto_1

    .line 209
    :cond_2
    const/16 v2, 0xb3

    if-ne p1, v2, :cond_0

    .line 210
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    .line 186
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->seenExtensionStartCode:Z

    .line 187
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    .line 188
    return-void
.end method
