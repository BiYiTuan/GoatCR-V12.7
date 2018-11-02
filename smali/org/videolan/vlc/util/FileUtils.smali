.class public Lorg/videolan/vlc/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/util/FileUtils$Callback;
    }
.end annotation


# static fields
.field public static final EXTERNAL_PUBLIC_DIRECTORY:Ljava/lang/String;

.field private static final HASH_CHUNK_SIZE:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/videolan/vlc/util/FileUtils;->EXTERNAL_PUBLIC_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canWrite(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    if-nez p0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 224
    :cond_1
    const-string v3, "file://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 226
    :cond_2
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    sget-object v3, Lorg/videolan/vlc/util/FileUtils;->EXTERNAL_PUBLIC_DIRECTORY:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v1

    .line 229
    goto :goto_0

    .line 230
    :cond_3
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isKitKatOrLater()Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static computeHash(Ljava/io/File;)Ljava/lang/String;
    .locals 24
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 237
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 238
    .local v18, "size":J
    const-wide/32 v4, 0x10000

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 239
    .local v6, "chunkSizeForFile":J
    const-wide/16 v14, 0x0

    .line 240
    .local v14, "head":J
    const-wide/16 v20, 0x0

    .line 241
    .local v20, "tail":J
    const/4 v11, 0x0

    .line 242
    .local v11, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 244
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 246
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lorg/videolan/vlc/util/FileUtils;->computeHashForChunk(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    .line 249
    long-to-int v3, v6

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 251
    .local v8, "bb":Ljava/nio/ByteBuffer;
    const-wide/32 v4, 0x10000

    sub-long v4, v18, v4

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 252
    .local v16, "position":J
    :goto_0
    move-wide/from16 v0, v16

    invoke-virtual {v2, v8, v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v13

    .local v13, "read":I
    if-lez v13, :cond_0

    .line 253
    int-to-long v4, v13

    add-long v16, v16, v4

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 256
    invoke-static {v8}, Lorg/videolan/vlc/util/FileUtils;->computeHashForChunk(Ljava/nio/ByteBuffer;)J

    move-result-wide v20

    .line 258
    const-string v3, "%016x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-long v22, v18, v14

    add-long v22, v22, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 266
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 267
    invoke-static {v12}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    move-object v11, v12

    .line 264
    .end local v8    # "bb":Ljava/nio/ByteBuffer;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "read":I
    .end local v16    # "position":J
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return-object v3

    .line 259
    :catch_0
    move-exception v10

    .line 260
    .local v10, "e1":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    const/4 v3, 0x0

    .line 266
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 267
    invoke-static {v11}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    goto :goto_1

    .line 262
    .end local v10    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 263
    .local v9, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    const/4 v3, 0x0

    .line 266
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 267
    invoke-static {v11}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    goto :goto_1

    .line 266
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 267
    invoke-static {v11}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    throw v3

    .line 266
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 262
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 259
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v10

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static computeHashForChunk(Ljava/nio/ByteBuffer;)J
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 272
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 273
    .local v2, "longBuffer":Ljava/nio/LongBuffer;
    const-wide/16 v0, 0x0

    .line 274
    .local v0, "hash":J
    :goto_0
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 276
    :cond_0
    return-wide v0
.end method

.method public static convertLocalUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/sdcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 92
    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/sdcard"

    sget-object v2, Lorg/videolan/vlc/util/FileUtils;->EXTERNAL_PUBLIC_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method private static copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "fromAssetPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 139
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 140
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 141
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v1, v3}, Lorg/videolan/vlc/util/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 143
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    const/4 v4, 0x1

    .line 149
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 150
    invoke-static {v3}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    move-object v2, v3

    .line 147
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_0
    return v4

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    const/4 v4, 0x0

    .line 149
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 150
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 150
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    throw v4

    .line 149
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 145
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static copyAssetFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "fromAssetPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "files":[Ljava/lang/String;
    array-length v5, v2

    if-nez v5, :cond_1

    move v3, v4

    .line 130
    .end local v2    # "files":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 116
    .restart local v2    # "files":[Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 117
    const/4 v3, 0x1

    .line 118
    .local v3, "res":Z
    array-length v6, v2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 119
    .local v1, "file":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lorg/videolan/vlc/util/FileUtils;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v3, v7

    .line 118
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lorg/videolan/vlc/util/FileUtils;->copyAssetFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    and-int/2addr v3, v7

    goto :goto_2

    .line 128
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "res":Z
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 130
    goto/16 :goto_0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 157
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 158
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 13
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x0

    .line 163
    const/4 v8, 0x1

    .line 164
    .local v8, "ret":Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 165
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 166
    .local v2, "filesList":[Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 167
    array-length v10, v2

    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v1, v2, v9

    .line 168
    .local v1, "file":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, p1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lorg/videolan/vlc/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v11

    and-int/2addr v8, v11

    .line 167
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filesList":[Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 173
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v10, 0x400

    :try_start_2
    new-array v0, v10, [B

    .line 179
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_1

    .line 180
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 183
    .end local v0    # "buf":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v10

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 186
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_2
    invoke-static {v3}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 187
    invoke-static {v6}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 191
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    :goto_3
    return v9

    .line 182
    .restart local v0    # "buf":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_1
    const/4 v9, 0x1

    .line 186
    invoke-static {v4}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 187
    invoke-static {v7}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    goto :goto_3

    .line 184
    .end local v0    # "buf":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v10

    .line 186
    :goto_4
    invoke-static {v3}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 187
    invoke-static {v6}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    goto :goto_3

    .line 186
    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v3}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 187
    invoke-static {v6}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    throw v9

    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    :cond_2
    move v9, v8

    .line 191
    goto :goto_3

    .line 186
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_5

    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_5

    .line 184
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_4

    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v10

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 183
    :catch_4
    move-exception v10

    goto :goto_2

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 63
    if-nez p0, :cond_1

    .line 64
    const-string p0, ""

    .line 69
    .end local p0    # "path":Ljava/lang/String;
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 65
    .end local v0    # "index":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 66
    .restart local v0    # "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 67
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v2, "/"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    .end local p0    # "path":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 75
    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    move-object v1, p0

    .line 76
    .local v1, "parentPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 79
    .local v0, "index":I
    if-lez v0, :cond_3

    .line 80
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    move-object p0, v1

    .line 83
    goto :goto_0

    .line 81
    :cond_3
    if-nez v0, :cond_2

    .line 82
    const-string v1, "/"

    goto :goto_1
.end method

.method public static getPathFromURI(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x10

    .line 97
    const/4 v7, 0x0

    .line 99
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 100
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 101
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 102
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_0

    .line 106
    invoke-static {v7}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 103
    :cond_0
    return-object v0

    .line 105
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    :catchall_0
    move-exception v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_1

    .line 106
    invoke-static {v7}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    :cond_1
    throw v0
.end method
