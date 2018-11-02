.class public final Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;
    }
.end annotation


# static fields
.field private static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field private static final AUDIO_OBJECT_TYPE_ER_BSAC:I = 0x16

.field private static final AUDIO_OBJECT_TYPE_PS:I = 0x1d

.field private static final AUDIO_OBJECT_TYPE_SBR:I = 0x5

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final NAL_START_CODE:[B

.field private static final TAG:Ljava/lang/String; = "CodecSpecificDataUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 50
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    .line 46
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 50
    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    .line 68
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacAudioSpecificConfig(II)[B
    .locals 7
    .param p0, "sampleRate"    # I
    .param p1, "numChannels"    # I

    .prologue
    .line 167
    const/4 v3, -0x1

    .line 168
    .local v3, "sampleRateIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 169
    sget-object v4, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v4, v4, v2

    if-ne p0, v4, :cond_0

    .line 170
    move v3, v2

    .line 168
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, -0x1

    .line 174
    .local v0, "channelConfig":I
    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 175
    sget-object v4, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v4, v4, v2

    if-ne p1, v4, :cond_2

    .line 176
    move v0, v2

    .line 174
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    :cond_3
    const/4 v4, 0x2

    new-array v1, v4, [B

    .line 181
    .local v1, "csd":[B
    const/4 v4, 0x0

    shr-int/lit8 v5, v3, 0x1

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 182
    const/4 v4, 0x1

    and-int/lit8 v5, v3, 0x1

    shl-int/lit8 v5, v5, 0x7

    shl-int/lit8 v6, v0, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 183
    return-object v1
.end method

.method public static buildAacAudioSpecificConfig(III)[B
    .locals 4
    .param p0, "audioObjectType"    # I
    .param p1, "sampleRateIndex"    # I
    .param p2, "channelConfig"    # I

    .prologue
    .line 153
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 154
    .local v0, "audioSpecificConfig":[B
    const/4 v1, 0x0

    shl-int/lit8 v2, p0, 0x3

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v3, p1, 0x1

    and-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    const/4 v1, 0x1

    shl-int/lit8 v2, p1, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 156
    return-object v0
.end method

.method public static buildNalUnit([BII)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 195
    sget-object v1, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    add-int/2addr v1, p2

    new-array v0, v1, [B

    .line 196
    .local v0, "nalUnit":[B
    sget-object v1, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    sget-object v2, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    sget-object v1, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    return-object v0
.end method

.method private static findNalStartCode([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 242
    array-length v2, p0

    sget-object v3, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    sub-int v0, v2, v3

    .line 243
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 244
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 243
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static isNalStartCode([BI)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 259
    array-length v2, p0

    sub-int/2addr v2, p1

    sget-object v3, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    if-gt v2, v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 263
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    sget-object v3, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseAacAudioSpecificConfig([B)Landroid/util/Pair;
    .locals 12
    .param p0, "audioSpecificConfig"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 108
    new-instance v1, Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 109
    .local v1, "bitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 110
    .local v0, "audioObjectType":I
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 112
    .local v4, "frequencyIndex":I
    const/16 v6, 0xf

    if-ne v4, v6, :cond_2

    .line 113
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 118
    .local v5, "sampleRate":I
    :goto_0
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 119
    .local v2, "channelConfiguration":I
    if-eq v0, v10, :cond_0

    const/16 v6, 0x1d

    if-ne v0, v6, :cond_1

    .line 125
    :cond_0
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 126
    const/16 v6, 0xf

    if-ne v4, v6, :cond_4

    .line 127
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 132
    :goto_1
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 133
    const/16 v6, 0x16

    if-ne v0, v6, :cond_1

    .line 135
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 138
    :cond_1
    sget-object v6, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v3, v6, v2

    .line 139
    .local v3, "channelCount":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    :goto_2
    invoke-static {v7}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 115
    .end local v2    # "channelConfiguration":I
    .end local v3    # "channelCount":I
    .end local v5    # "sampleRate":I
    :cond_2
    if-ge v4, v11, :cond_3

    move v6, v7

    :goto_3
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 116
    sget-object v6, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v5, v6, v4

    .restart local v5    # "sampleRate":I
    goto :goto_0

    .end local v5    # "sampleRate":I
    :cond_3
    move v6, v8

    .line 115
    goto :goto_3

    .line 129
    .restart local v2    # "channelConfiguration":I
    .restart local v5    # "sampleRate":I
    :cond_4
    if-ge v4, v11, :cond_5

    move v6, v7

    :goto_4
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 130
    sget-object v6, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v5, v6, v4

    goto :goto_1

    :cond_5
    move v6, v8

    .line 129
    goto :goto_4

    .restart local v3    # "channelCount":I
    :cond_6
    move v7, v8

    .line 139
    goto :goto_2
.end method

.method public static parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;
    .locals 36
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    .line 278
    const/16 v33, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v25

    .line 279
    .local v25, "profileIdc":I
    const/16 v33, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 282
    const/4 v4, 0x1

    .line 283
    .local v4, "chromaFormatIdc":I
    const/16 v33, 0x64

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0x6e

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0x7a

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0xf4

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0x2c

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0x53

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0x56

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0x76

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0x80

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0x8a

    move/from16 v0, v25

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 286
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 287
    const/16 v33, 0x3

    move/from16 v0, v33

    if-ne v4, v0, :cond_1

    .line 288
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 290
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 292
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v29

    .line 294
    .local v29, "seqScalingMatrixPresentFlag":Z
    if-eqz v29, :cond_5

    .line 295
    const/16 v33, 0x3

    move/from16 v0, v33

    if-eq v4, v0, :cond_3

    const/16 v17, 0x8

    .line 296
    .local v17, "limit":I
    :goto_0
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v28

    .line 298
    .local v28, "seqScalingListPresentFlag":Z
    if-eqz v28, :cond_2

    .line 299
    const/16 v33, 0x6

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_4

    const/16 v33, 0x10

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 296
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 295
    .end local v16    # "i":I
    .end local v17    # "limit":I
    .end local v28    # "seqScalingListPresentFlag":Z
    :cond_3
    const/16 v17, 0xc

    goto :goto_0

    .line 299
    .restart local v16    # "i":I
    .restart local v17    # "limit":I
    .restart local v28    # "seqScalingListPresentFlag":Z
    :cond_4
    const/16 v33, 0x40

    goto :goto_2

    .line 305
    .end local v16    # "i":I
    .end local v17    # "limit":I
    .end local v28    # "seqScalingListPresentFlag":Z
    .end local v29    # "seqScalingMatrixPresentFlag":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 307
    .local v22, "picOrderCntType":J
    const-wide/16 v34, 0x0

    cmp-long v33, v22, v34

    if-nez v33, :cond_a

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 318
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 319
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v33

    add-int/lit8 v21, v33, 0x1

    .line 322
    .local v21, "picWidthInMbs":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v33

    add-int/lit8 v20, v33, 0x1

    .line 323
    .local v20, "picHeightInMapUnits":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v14

    .line 324
    .local v14, "frameMbsOnlyFlag":Z
    if-eqz v14, :cond_b

    const/16 v33, 0x1

    :goto_3
    rsub-int/lit8 v33, v33, 0x2

    mul-int v13, v33, v20

    .line 325
    .local v13, "frameHeightInMbs":I
    if-nez v14, :cond_7

    .line 326
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 329
    :cond_7
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 330
    mul-int/lit8 v15, v21, 0x10

    .line 331
    .local v15, "frameWidth":I
    mul-int/lit8 v12, v13, 0x10

    .line 332
    .local v12, "frameHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 333
    .local v11, "frameCroppingFlag":Z
    if-eqz v11, :cond_8

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 335
    .local v8, "frameCropLeftOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 336
    .local v9, "frameCropRightOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 337
    .local v10, "frameCropTopOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 339
    .local v7, "frameCropBottomOffset":I
    if-nez v4, :cond_d

    .line 340
    const/4 v5, 0x1

    .line 341
    .local v5, "cropUnitX":I
    if-eqz v14, :cond_c

    const/16 v33, 0x1

    :goto_4
    rsub-int/lit8 v6, v33, 0x2

    .line 348
    .local v6, "cropUnitY":I
    :goto_5
    add-int v33, v8, v9

    mul-int v33, v33, v5

    sub-int v15, v15, v33

    .line 349
    add-int v33, v10, v7

    mul-int v33, v33, v6

    sub-int v12, v12, v33

    .line 352
    .end local v5    # "cropUnitX":I
    .end local v6    # "cropUnitY":I
    .end local v7    # "frameCropBottomOffset":I
    .end local v8    # "frameCropLeftOffset":I
    .end local v9    # "frameCropRightOffset":I
    .end local v10    # "frameCropTopOffset":I
    :cond_8
    const/high16 v24, 0x3f800000    # 1.0f

    .line 353
    .local v24, "pixelWidthHeightRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v32

    .line 354
    .local v32, "vuiParametersPresentFlag":Z
    if-eqz v32, :cond_9

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 356
    .local v3, "aspectRatioInfoPresentFlag":Z
    if-eqz v3, :cond_9

    .line 357
    const/16 v33, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 358
    .local v2, "aspectRatioIdc":I
    const/16 v33, 0xff

    move/from16 v0, v33

    if-ne v2, v0, :cond_11

    .line 359
    const/16 v33, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v27

    .line 360
    .local v27, "sarWidth":I
    const/16 v33, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v26

    .line 361
    .local v26, "sarHeight":I
    if-eqz v27, :cond_9

    if-eqz v26, :cond_9

    .line 362
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v24, v33, v34

    .line 372
    .end local v2    # "aspectRatioIdc":I
    .end local v3    # "aspectRatioInfoPresentFlag":Z
    .end local v26    # "sarHeight":I
    .end local v27    # "sarWidth":I
    :cond_9
    :goto_6
    new-instance v33, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-direct {v0, v15, v12, v1}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;-><init>(IIF)V

    return-object v33

    .line 309
    .end local v11    # "frameCroppingFlag":Z
    .end local v12    # "frameHeight":I
    .end local v13    # "frameHeightInMbs":I
    .end local v14    # "frameMbsOnlyFlag":Z
    .end local v15    # "frameWidth":I
    .end local v20    # "picHeightInMapUnits":I
    .end local v21    # "picWidthInMbs":I
    .end local v24    # "pixelWidthHeightRatio":F
    .end local v32    # "vuiParametersPresentFlag":Z
    :cond_a
    const-wide/16 v34, 0x1

    cmp-long v33, v22, v34

    if-nez v33, :cond_6

    .line 310
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 314
    .local v18, "numRefFramesInPicOrderCntCycle":J
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_7
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v33, v34, v18

    if-gez v33, :cond_6

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 314
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 324
    .end local v16    # "i":I
    .end local v18    # "numRefFramesInPicOrderCntCycle":J
    .restart local v14    # "frameMbsOnlyFlag":Z
    .restart local v20    # "picHeightInMapUnits":I
    .restart local v21    # "picWidthInMbs":I
    :cond_b
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 341
    .restart local v5    # "cropUnitX":I
    .restart local v7    # "frameCropBottomOffset":I
    .restart local v8    # "frameCropLeftOffset":I
    .restart local v9    # "frameCropRightOffset":I
    .restart local v10    # "frameCropTopOffset":I
    .restart local v11    # "frameCroppingFlag":Z
    .restart local v12    # "frameHeight":I
    .restart local v13    # "frameHeightInMbs":I
    .restart local v15    # "frameWidth":I
    :cond_c
    const/16 v33, 0x0

    goto/16 :goto_4

    .line 343
    .end local v5    # "cropUnitX":I
    :cond_d
    const/16 v33, 0x3

    move/from16 v0, v33

    if-ne v4, v0, :cond_e

    const/16 v31, 0x1

    .line 344
    .local v31, "subWidthC":I
    :goto_8
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v4, v0, :cond_f

    const/16 v30, 0x2

    .line 345
    .local v30, "subHeightC":I
    :goto_9
    move/from16 v5, v31

    .line 346
    .restart local v5    # "cropUnitX":I
    if-eqz v14, :cond_10

    const/16 v33, 0x1

    :goto_a
    rsub-int/lit8 v33, v33, 0x2

    mul-int v6, v30, v33

    .restart local v6    # "cropUnitY":I
    goto/16 :goto_5

    .line 343
    .end local v5    # "cropUnitX":I
    .end local v6    # "cropUnitY":I
    .end local v30    # "subHeightC":I
    .end local v31    # "subWidthC":I
    :cond_e
    const/16 v31, 0x2

    goto :goto_8

    .line 344
    .restart local v31    # "subWidthC":I
    :cond_f
    const/16 v30, 0x1

    goto :goto_9

    .line 346
    .restart local v5    # "cropUnitX":I
    .restart local v30    # "subHeightC":I
    :cond_10
    const/16 v33, 0x0

    goto :goto_a

    .line 364
    .end local v5    # "cropUnitX":I
    .end local v7    # "frameCropBottomOffset":I
    .end local v8    # "frameCropLeftOffset":I
    .end local v9    # "frameCropRightOffset":I
    .end local v10    # "frameCropTopOffset":I
    .end local v30    # "subHeightC":I
    .end local v31    # "subWidthC":I
    .restart local v2    # "aspectRatioIdc":I
    .restart local v3    # "aspectRatioInfoPresentFlag":Z
    .restart local v24    # "pixelWidthHeightRatio":F
    .restart local v32    # "vuiParametersPresentFlag":Z
    :cond_11
    sget-object v33, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v2, v0, :cond_12

    .line 365
    sget-object v33, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v24, v33, v2

    goto :goto_6

    .line 367
    :cond_12
    const-string v33, "CodecSpecificDataUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Unexpected aspect_ratio_idc value: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V
    .locals 5
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;
    .param p1, "size"    # I

    .prologue
    .line 376
    const/16 v2, 0x8

    .line 377
    .local v2, "lastScale":I
    const/16 v3, 0x8

    .line 378
    .local v3, "nextScale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 379
    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    .line 381
    .local v0, "deltaScale":I
    add-int v4, v2, v0

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v3, v4, 0x100

    .line 383
    .end local v0    # "deltaScale":I
    :cond_0
    if-nez v3, :cond_1

    .line 378
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 383
    goto :goto_1

    .line 385
    :cond_2
    return-void
.end method

.method public static splitNalUnits([B)[[B
    .locals 9
    .param p0, "data"    # [B

    .prologue
    const/4 v8, 0x0

    .line 213
    invoke-static {p0, v8}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v7

    if-nez v7, :cond_0

    .line 215
    const/4 v7, 0x0

    check-cast v7, [[B

    .line 231
    :goto_0
    return-object v7

    .line 217
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v6, "starts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 220
    .local v3, "nalUnitIndex":I
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v7, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v7, v7

    add-int/2addr v7, v3

    invoke-static {p0, v7}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v3

    .line 222
    const/4 v7, -0x1

    if-ne v3, v7, :cond_1

    .line 223
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [[B

    .line 224
    .local v4, "split":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 225
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 226
    .local v5, "startIndex":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    .local v0, "endIndex":I
    :goto_2
    sub-int v7, v0, v5

    new-array v2, v7, [B

    .line 228
    .local v2, "nal":[B
    array-length v7, v2

    invoke-static {p0, v5, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    aput-object v2, v4, v1

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    .end local v0    # "endIndex":I
    .end local v2    # "nal":[B
    :cond_2
    array-length v0, p0

    goto :goto_2

    .end local v5    # "startIndex":I
    :cond_3
    move-object v7, v4

    .line 231
    goto :goto_0
.end method
