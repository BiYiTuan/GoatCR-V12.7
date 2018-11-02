.class public final Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPsshAtom(Ljava/util/UUID;[B)[B
    .locals 4
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "data"    # [B

    .prologue
    .line 38
    array-length v2, p1

    add-int/lit8 v1, v2, 0x20

    .line 39
    .local v1, "psshBoxLength":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "psshBox":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 41
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 45
    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private static isPsshAtom(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/util/UUID;)Z
    .locals 8
    .param p0, "atomData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v4

    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v3

    .line 95
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 97
    .local v0, "atomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    if-ne v0, v4, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 102
    .local v1, "atomType":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-ne v1, v4, :cond_0

    .line 106
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 107
    if-nez p1, :cond_3

    .line 108
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 115
    .local v2, "dataSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 119
    const/4 v3, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "dataSize":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method public static parseSchemeSpecificData([BLjava/util/UUID;)[B
    .locals 4
    .param p0, "atom"    # [B
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    .line 80
    .local v0, "atomData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->isPsshAtom(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    .line 83
    :cond_0
    const/16 v3, 0x1c

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 84
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 85
    .local v2, "dataSize":I
    new-array v1, v2, [B

    .line 86
    .local v1, "data":[B
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    goto :goto_0
.end method

.method public static parseUuid([B)Ljava/util/UUID;
    .locals 6
    .param p0, "atom"    # [B

    .prologue
    const/4 v1, 0x0

    .line 59
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    .line 60
    .local v0, "atomData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->isPsshAtom(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/util/UUID;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    :goto_0
    return-object v1

    .line 63
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 64
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method
