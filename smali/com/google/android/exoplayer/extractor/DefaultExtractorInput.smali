.class public final Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/ExtractorInput;


# static fields
.field private static final SCRATCH_SPACE:[B


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V
    .locals 2
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 47
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    .line 48
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->streamLength:J

    .line 49
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 50
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 190
    iget v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int v0, v1, p1

    .line 191
    .local v0, "requiredLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 194
    :cond_0
    return-void
.end method

.method private updatePeekBuffer(I)V
    .locals 4
    .param p1, "bytesConsumed"    # I

    .prologue
    const/4 v3, 0x0

    .line 202
    iget v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 203
    iput v3, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 151
    iget v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v6, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v5, v6

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 152
    .local v2, "peekBytes":I
    sub-int v1, p1, v2

    .line 153
    .local v1, "fillBytes":I
    move v3, v1

    .line 154
    .local v3, "remaining":I
    iget v4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 155
    .local v4, "writePosition":I
    :goto_0
    if-lez v3, :cond_2

    .line 156
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 159
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-interface {v5, v6, v4, v3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 160
    .local v0, "bytesRead":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 161
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 163
    :cond_1
    sub-int/2addr v3, v0

    .line 164
    add-int/2addr v4, v0

    .line 165
    goto :goto_0

    .line 166
    .end local v0    # "bytesRead":I
    :cond_2
    iget v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 167
    iget v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 168
    return-void
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 125
    iget v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v6, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v5, v6

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 126
    .local v2, "peekBytes":I
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v6, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {v5, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    add-int/2addr p2, v2

    .line 128
    sub-int v1, p3, v2

    .line 129
    .local v1, "fillBytes":I
    move v3, v1

    .line 130
    .local v3, "remaining":I
    iget v4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 131
    .local v4, "writePosition":I
    :goto_0
    if-lez v3, :cond_2

    .line 132
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 135
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-interface {v5, v6, v4, v3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 136
    .local v0, "bytesRead":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 137
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 139
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v5, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    sub-int/2addr v3, v0

    .line 141
    add-int/2addr v4, v0

    .line 142
    add-int/2addr p2, v0

    .line 143
    goto :goto_0

    .line 144
    .end local v0    # "bytesRead":I
    :cond_2
    iget v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v5, p3

    iput v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 145
    iget v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 146
    return-void
.end method

.method public read([BII)I
    .locals 6
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 54
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 57
    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 58
    .local v1, "peekBytes":I
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    add-int/2addr p2, v1

    .line 60
    sub-int/2addr p3, v1

    .line 61
    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 62
    .local v0, "bytesRead":I
    :cond_1
    if-ne v0, v2, :cond_2

    .line 68
    :goto_0
    return v2

    .line 65
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 66
    add-int/2addr v0, v1

    .line 67
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    move v2, v0

    .line 68
    goto :goto_0
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    .line 101
    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 8
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    iget v4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 75
    .local v1, "peekBytes":I
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v4, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    add-int/2addr p2, v1

    .line 77
    sub-int v2, p3, v1

    .line 78
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_3

    .line 79
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 82
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v4, p1, p2, v2}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 83
    .local v0, "bytesRead":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 84
    if-eqz p4, :cond_1

    if-ne v2, p3, :cond_1

    .line 94
    .end local v0    # "bytesRead":I
    :goto_1
    return v3

    .line 87
    .restart local v0    # "bytesRead":I
    :cond_1
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 89
    :cond_2
    add-int/2addr p2, v0

    .line 90
    sub-int/2addr v2, v0

    .line 91
    goto :goto_0

    .line 92
    .end local v0    # "bytesRead":I
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 93
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    .line 94
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public resetPeekPosition()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 173
    return-void
.end method

.method public skipFully(I)V
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 105
    iget v3, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 106
    .local v1, "peekBytes":I
    sub-int v2, p1, v1

    .line 107
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_2

    .line 108
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    sget-object v4, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v6, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 112
    .local v0, "bytesRead":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 113
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 115
    :cond_1
    sub-int/2addr v2, v0

    .line 116
    goto :goto_0

    .line 117
    .end local v0    # "bytesRead":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 118
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    .line 119
    return-void
.end method
