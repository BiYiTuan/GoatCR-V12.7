.class public Lcom/gemini/play/GHash;
.super Ljava/lang/Object;
.source "GHash.java"


# static fields
.field static M_MASK:I

.field static M_SHIFT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const v0, -0x789a012f

    sput v0, Lcom/gemini/play/GHash;->M_MASK:I

    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/gemini/play/GHash;->M_SHIFT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static APHash(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 259
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    shl-int/lit8 v2, v0, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x3

    xor-int/2addr v2, v3

    .line 260
    :goto_1
    xor-int/2addr v0, v2

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    shl-int/lit8 v2, v0, 0xb

    .line 260
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x5

    xor-int/2addr v2, v3

    xor-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 264
    :cond_1
    return v0
.end method

.method public static BKDRHash(Ljava/lang/String;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 202
    const/16 v2, 0x83

    .line 203
    .local v2, "seed":I
    const/4 v0, 0x0

    .line 205
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 207
    mul-int v3, v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    return v3
.end method

.method public static DEKHash(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 244
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 246
    shl-int/lit8 v2, v0, 0x5

    shr-int/lit8 v3, v0, 0x1b

    xor-int/2addr v2, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int v0, v2, v3

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    return v2
.end method

.method public static DJBHash(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 229
    const/16 v0, 0x1505

    .line 231
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 233
    shl-int/lit8 v2, v0, 0x5

    add-int/2addr v2, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    return v2
.end method

.method public static ELFHash(Ljava/lang/String;)I
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "hash":I
    const/4 v2, 0x0

    .line 186
    .local v2, "x":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 188
    shl-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 189
    int-to-long v4, v0

    const-wide v6, 0xf0000000L

    and-long/2addr v4, v6

    long-to-int v2, v4

    if-eqz v2, :cond_0

    .line 191
    shr-int/lit8 v3, v2, 0x18

    xor-int/2addr v0, v3

    .line 192
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    .line 186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    return v3
.end method

.method public static FNVHash([B)I
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 81
    const v1, -0x7ee3623b

    .line 82
    .local v1, "hash":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 83
    .local v0, "b":B
    const v4, 0x1000193

    mul-int/2addr v4, v1

    xor-int v1, v4, v0

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "b":B
    :cond_0
    sget v2, Lcom/gemini/play/GHash;->M_SHIFT:I

    if-nez v2, :cond_1

    .line 86
    .end local v1    # "hash":I
    :goto_1
    return v1

    .restart local v1    # "hash":I
    :cond_1
    sget v2, Lcom/gemini/play/GHash;->M_SHIFT:I

    shr-int v2, v1, v2

    xor-int/2addr v2, v1

    sget v3, Lcom/gemini/play/GHash;->M_MASK:I

    and-int v1, v2, v3

    goto :goto_1
.end method

.method public static FNVHash1(Ljava/lang/String;)I
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 105
    const v2, 0x1000193

    .line 106
    .local v2, "p":I
    const v0, -0x7ee3623b

    .line 107
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/2addr v3, v0

    const v4, 0x1000193

    mul-int v0, v3, v4

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    shl-int/lit8 v3, v0, 0xd

    add-int/2addr v0, v3

    .line 110
    shr-int/lit8 v3, v0, 0x7

    xor-int/2addr v0, v3

    .line 111
    shl-int/lit8 v3, v0, 0x3

    add-int/2addr v0, v3

    .line 112
    shr-int/lit8 v3, v0, 0x11

    xor-int/2addr v0, v3

    .line 113
    shl-int/lit8 v3, v0, 0x5

    add-int/2addr v0, v3

    .line 114
    return v0
.end method

.method public static FNVHash1([B)I
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 91
    const v2, 0x1000193

    .line 92
    .local v2, "p":I
    const v1, -0x7ee3623b

    .line 93
    .local v1, "hash":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v0, p0, v3

    .line 94
    .local v0, "b":B
    xor-int v5, v1, v0

    const v6, 0x1000193

    mul-int v1, v5, v6

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "b":B
    :cond_0
    shl-int/lit8 v3, v1, 0xd

    add-int/2addr v1, v3

    .line 96
    shr-int/lit8 v3, v1, 0x7

    xor-int/2addr v1, v3

    .line 97
    shl-int/lit8 v3, v1, 0x3

    add-int/2addr v1, v3

    .line 98
    shr-int/lit8 v3, v1, 0x11

    xor-int/2addr v1, v3

    .line 99
    shl-int/lit8 v3, v1, 0x5

    add-int/2addr v1, v3

    .line 100
    return v1
.end method

.method public static JSHash(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 147
    const v0, 0x4e67c6a7    # 9.7213894E8f

    .line 149
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 151
    shl-int/lit8 v2, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    xor-int/2addr v0, v2

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    return v2
.end method

.method public static PJWHash(Ljava/lang/String;)I
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 160
    const/16 v0, 0x20

    .line 161
    .local v0, "BitsInUnsignedInt":I
    const/16 v7, 0x60

    div-int/lit8 v3, v7, 0x4

    .line 162
    .local v3, "ThreeQuarters":I
    div-int/lit8 v2, v0, 0x8

    .line 163
    .local v2, "OneEighth":I
    const/4 v7, -0x1

    shl-int/lit8 v1, v7, 0x1c

    .line 164
    .local v1, "HighBits":I
    const/4 v4, 0x0

    .line 165
    .local v4, "hash":I
    const/4 v6, 0x0

    .line 167
    .local v6, "test":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 169
    shl-int/lit8 v7, v4, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int v4, v7, v8

    .line 171
    and-int v6, v4, v1

    if-eqz v6, :cond_0

    .line 173
    shr-int/lit8 v7, v6, 0x18

    xor-int/2addr v7, v4

    const v8, 0xfffffff

    and-int v4, v7, v8

    .line 167
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const v7, 0x7fffffff

    and-int/2addr v7, v4

    return v7
.end method

.method public static RSHash(Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 131
    const v1, 0x5c6b7

    .line 132
    .local v1, "b":I
    const v0, 0xf8c9

    .line 133
    .local v0, "a":I
    const/4 v2, 0x0

    .line 135
    .local v2, "hash":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 137
    mul-int v4, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v2, v4, v5

    .line 138
    mul-int/2addr v0, v1

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    const v4, 0x7fffffff

    and-int/2addr v4, v2

    return v4
.end method

.method public static SDBMHash(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v3, v0, 0x6

    add-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x10

    add-int/2addr v2, v3

    sub-int v0, v2, v0

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    return v2
.end method

.method public static additiveHash(Ljava/lang/String;I)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "prime"    # I

    .prologue
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    .line 9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    rem-int v2, v0, p1

    return v2
.end method

.method public static bernstein(Ljava/lang/String;)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x21

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return v0
.end method

.method public static intHash(I)I
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 120
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit8 v0, v0, -0x1

    add-int/2addr p0, v0

    .line 121
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 122
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 123
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 124
    shl-int/lit8 v0, p0, 0xb

    xor-int/lit8 v0, v0, -0x1

    add-int/2addr p0, v0

    .line 125
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    .line 126
    return p0
.end method

.method public static java(Ljava/lang/String;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "h":I
    const/4 v3, 0x0

    .line 273
    .local v3, "off":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 274
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "off":I
    .local v4, "off":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 276
    mul-int/lit8 v5, v0, 0x1f

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off":I
    .restart local v3    # "off":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v0, v5, v6

    .line 274
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "off":I
    .restart local v4    # "off":I
    goto :goto_0

    .line 278
    :cond_0
    return v0
.end method

.method public static mixHash(Ljava/lang/String;)J
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v0, v2

    .line 284
    .local v0, "hash":J
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 285
    invoke-static {p0}, Lcom/gemini/play/GHash;->FNVHash1(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 286
    return-wide v0
.end method

.method public static oneByOneHash(Ljava/lang/String;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    .line 30
    shl-int/lit8 v2, v0, 0xa

    add-int/2addr v0, v2

    .line 31
    shr-int/lit8 v2, v0, 0x6

    xor-int/2addr v0, v2

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    shl-int/lit8 v2, v0, 0x3

    add-int/2addr v0, v2

    .line 34
    shr-int/lit8 v2, v0, 0xb

    xor-int/2addr v0, v2

    .line 35
    shl-int/lit8 v2, v0, 0xf

    add-int/2addr v0, v2

    .line 37
    return v0
.end method

.method public static rotatingHash(Ljava/lang/String;I)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "prime"    # I

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 18
    shl-int/lit8 v2, v0, 0x4

    shr-int/lit8 v3, v0, 0x1c

    xor-int/2addr v2, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int v0, v2, v3

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    rem-int v2, v0, p1

    return v2
.end method

.method public static universal([CI[I)I
    .locals 5
    .param p0, "key"    # [C
    .param p1, "mask"    # I
    .param p2, "tab"    # [I

    .prologue
    .line 50
    array-length v0, p0

    .local v0, "hash":I
    array-length v3, p0

    .line 51
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    shl-int/lit8 v4, v3, 0x3

    if-ge v1, v4, :cond_8

    .line 53
    shr-int/lit8 v4, v1, 0x3

    aget-char v2, p0, v4

    .line 54
    .local v2, "k":C
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_0

    add-int/lit8 v4, v1, 0x0

    aget v4, p2, v4

    xor-int/2addr v0, v4

    .line 55
    :cond_0
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget v4, p2, v4

    xor-int/2addr v0, v4

    .line 56
    :cond_1
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_2

    add-int/lit8 v4, v1, 0x2

    aget v4, p2, v4

    xor-int/2addr v0, v4

    .line 57
    :cond_2
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_3

    add-int/lit8 v4, v1, 0x3

    aget v4, p2, v4

    xor-int/2addr v0, v4

    .line 58
    :cond_3
    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_4

    add-int/lit8 v4, v1, 0x4

    aget v4, p2, v4

    xor-int/2addr v0, v4

    .line 59
    :cond_4
    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_5

    add-int/lit8 v4, v1, 0x5

    aget v4, p2, v4

    xor-int/2addr v0, v4

    .line 60
    :cond_5
    and-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_6

    add-int/lit8 v4, v1, 0x6

    aget v4, p2, v4

    xor-int/2addr v0, v4

    .line 61
    :cond_6
    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_7

    add-int/lit8 v4, v1, 0x7

    aget v4, p2, v4

    xor-int/2addr v0, v4

    .line 51
    :cond_7
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 63
    .end local v2    # "k":C
    :cond_8
    and-int v4, v0, p1

    return v4
.end method

.method public static zobrist([CI[[I)I
    .locals 4
    .param p0, "key"    # [C
    .param p1, "mask"    # I
    .param p2, "tab"    # [[I

    .prologue
    .line 72
    array-length v0, p0

    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 73
    aget-object v2, p2, v1

    aget-char v3, p0, v1

    aget v2, v2, v3

    xor-int/2addr v0, v2

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    and-int v2, v0, p1

    return v2
.end method
