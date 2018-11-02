.class public Lcom/gemini/play/BACKplayer;
.super Ljava/lang/Object;
.source "BACKplayer.java"


# static fields
.field public static VideoViewH:Lcom/gemini/play/VideoView;

.field public static VideoViewS:Lorg/videolan/vlc/VlcVideoView;

.field public static check_playing_currentid:Ljava/lang/String;

.field private static check_playing_running:Z

.field private static check_playing_times:I

.field public static check_playing_url:Ljava/lang/String;

.field public static currentID:Ljava/lang/String;

.field public static currentURL:Ljava/lang/String;

.field public static playbackArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/PlaybackStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static playbackTypeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/PlayBackTypeStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static player_isexit:Z

.field private static preivewok:Z

.field private static previewdates:[Ljava/lang/String;

.field private static previewindex:I

.field private static previewweeks:[Ljava/lang/String;

.field public static typePasswordOK:Z

.field public static urlss_num:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    .line 51
    sput v3, Lcom/gemini/play/BACKplayer;->urlss_num:I

    .line 56
    sput-object v2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    .line 57
    sput-object v2, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    .line 59
    sput-boolean v3, Lcom/gemini/play/BACKplayer;->typePasswordOK:Z

    .line 61
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    sput-object v0, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    sput-object v0, Lcom/gemini/play/BACKplayer;->previewweeks:[Ljava/lang/String;

    .line 63
    sput v3, Lcom/gemini/play/BACKplayer;->previewindex:I

    .line 64
    sput-boolean v3, Lcom/gemini/play/BACKplayer;->preivewok:Z

    .line 65
    sput-boolean v3, Lcom/gemini/play/BACKplayer;->check_playing_running:Z

    .line 66
    sput v3, Lcom/gemini/play/BACKplayer;->check_playing_times:I

    .line 68
    sput-object v2, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    .line 69
    sput-object v2, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    .line 71
    sput-object v2, Lcom/gemini/play/BACKplayer;->check_playing_currentid:Ljava/lang/String;

    .line 72
    sput-object v2, Lcom/gemini/play/BACKplayer;->check_playing_url:Ljava/lang/String;

    .line 74
    sput-boolean v3, Lcom/gemini/play/BACKplayer;->player_isexit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/gemini/play/BACKplayer;->playVideo_p2p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/gemini/play/BACKplayer;->saveCurrentID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/gemini/play/BACKplayer;->check_playing_running:Z

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/gemini/play/BACKplayer;->check_playing_times:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 47
    sput p0, Lcom/gemini/play/BACKplayer;->check_playing_times:I

    return p0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 47
    sget v0, Lcom/gemini/play/BACKplayer;->check_playing_times:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/gemini/play/BACKplayer;->check_playing_times:I

    return v0
.end method

.method public static checkVideo(Landroid/content/Context;)V
    .locals 4
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1651
    sget-boolean v2, Lcom/gemini/play/BACKplayer;->check_playing_running:Z

    if-ne v2, v3, :cond_0

    .line 1716
    :goto_0
    return-void

    .line 1654
    :cond_0
    sput-boolean v3, Lcom/gemini/play/BACKplayer;->check_playing_running:Z

    .line 1656
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1657
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/BACKplayer$6;

    invoke-direct {v1, p0, v0}, Lcom/gemini/play/BACKplayer$6;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1715
    .local v1, "mRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static createPlaylist(I)Ljava/lang/String;
    .locals 7
    .param p0, "gplayer_port"    # I

    .prologue
    .line 1583
    :try_start_0
    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v5, "playlist.m3u8"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1585
    .local v2, "outStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#EXTM3U\n#EXT-X-ALLOW-CACHE:YES\n#EXT-X-TARGETDURATION:72000\n#EXT-X-MEDIA-SEQUENCE:1\n#EXTINF:70000,\nhttp://127.0.0.1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1590
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/video.ts\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1593
    .local v3, "text":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1594
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1595
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1607
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v3    # "text":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/playlist.m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1609
    .local v1, "murl":Ljava/lang/String;
    return-object v1

    .line 1597
    .end local v1    # "murl":Ljava/lang/String;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1602
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v3    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1604
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createPlaylist(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "gplayer_port"    # I

    .prologue
    .line 1208
    :try_start_0
    const-string v4, "playlist.m3u8"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1210
    .local v2, "outStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#EXTM3U\n#EXT-X-ALLOW-CACHE:YES\n#EXT-X-TARGETDURATION:72000\n#EXT-X-MEDIA-SEQUENCE:110236\n#EXTINF:1,\nhttp://127.0.0.1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1215
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/video.ts\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1218
    .local v3, "text":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1219
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1220
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1232
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v3    # "text":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/playlist.m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, "murl":Ljava/lang/String;
    return-object v1

    .line 1222
    .end local v1    # "murl":Ljava/lang/String;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1227
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v3    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 1178
    :try_start_0
    const-string v3, "playlist.m3u8"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1179
    .local v1, "outStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#EXTM3U\n#EXT-X-TARGETDURATION:3600\n#EXT-X-VERSION:2\n#EXT-X-DISCONTINUITY\n#EXTINF:3600,\nhttp://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1184
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n#EXT-X-ENDLIST\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1188
    .local v2, "text":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1189
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1190
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1201
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 1192
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1197
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .end local v2    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromDateStringToLong(Ljava/lang/String;)J
    .locals 6
    .param p0, "inVal"    # Ljava/lang/String;

    .prologue
    .line 1541
    const/4 v0, 0x0

    .line 1542
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1544
    .local v2, "inputFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1548
    :goto_0
    if-nez v0, :cond_0

    .line 1549
    const-wide/16 v4, -0x1

    .line 1551
    :goto_1
    return-wide v4

    .line 1545
    :catch_0
    move-exception v1

    .line 1546
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1551
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_1
.end method

.method public static getCurrentID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 694
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v1, "back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMergeArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "al"    # [Ljava/lang/String;
    .param p1, "bl"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1278
    move-object v0, p0

    .line 1279
    .local v0, "a":[Ljava/lang/String;
    move-object v1, p1

    .line 1280
    .local v1, "b":[Ljava/lang/String;
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v2, v3, [Ljava/lang/String;

    .line 1281
    .local v2, "c":[Ljava/lang/String;
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1282
    array-length v3, v0

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1283
    return-object v2
.end method

.method public static getVideoPassFromPassTmpss(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "password_tmpss"    # Ljava/lang/String;
    .param p1, "next"    # Z

    .prologue
    .line 1386
    const/4 v9, 0x0

    .line 1387
    .local v9, "password_tmp":Ljava/lang/String;
    const-string v11, "geminihighlowgemini"

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1388
    .local v10, "password_tmps":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    if-ge v11, v12, :cond_5

    .line 1390
    array-length v11, v10

    const/4 v12, 0x1

    if-ge v11, v12, :cond_1

    .line 1391
    move-object v9, p0

    .line 1468
    :cond_0
    :goto_0
    return-object v9

    .line 1392
    :cond_1
    array-length v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 1394
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 1396
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1397
    .local v8, "one_pw":[Ljava/lang/String;
    sget v11, Lcom/gemini/play/BACKplayer;->urlss_num:I

    aget-object v11, v8, v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1398
    .local v2, "high_password_tmp":[Ljava/lang/String;
    array-length v11, v2

    const/4 v12, 0x2

    if-lt v11, v12, :cond_2

    .line 1399
    const/4 v11, 0x1

    aget-object v9, v2, v11

    goto :goto_0

    .line 1400
    :cond_2
    array-length v11, v2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1401
    const/4 v9, 0x0

    goto :goto_0

    .line 1404
    :cond_3
    const/4 v11, 0x0

    aget-object v9, v10, v11

    goto :goto_0

    .line 1408
    .end local v2    # "high_password_tmp":[Ljava/lang/String;
    .end local v8    # "one_pw":[Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 1414
    :cond_5
    const/4 v11, 0x1

    if-ne p1, v11, :cond_8

    .line 1416
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1417
    .local v4, "high_pws":[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v10, v11

    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1418
    .local v7, "low_pws":[Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/gemini/play/BACKplayer;->getMergeArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1419
    .local v1, "all_pws":[Ljava/lang/String;
    sget v11, Lcom/gemini/play/BACKplayer;->urlss_num:I

    array-length v12, v1

    if-lt v11, v12, :cond_6

    .line 1420
    const/4 v11, 0x0

    sput v11, Lcom/gemini/play/BACKplayer;->urlss_num:I

    .line 1421
    :cond_6
    sget v11, Lcom/gemini/play/BACKplayer;->urlss_num:I

    aget-object v11, v1, v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1422
    .local v0, "all_pw":[Ljava/lang/String;
    array-length v11, v0

    const/4 v12, 0x2

    if-lt v11, v12, :cond_7

    .line 1423
    const/4 v11, 0x1

    aget-object v9, v0, v11

    goto :goto_0

    .line 1425
    :cond_7
    const/4 v9, 0x0

    goto :goto_0

    .line 1430
    .end local v0    # "all_pw":[Ljava/lang/String;
    .end local v1    # "all_pws":[Ljava/lang/String;
    .end local v4    # "high_pws":[Ljava/lang/String;
    .end local v7    # "low_pws":[Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_b

    .line 1432
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1435
    .local v3, "high_password_tmps":[Ljava/lang/String;
    array-length v11, v3

    const/4 v12, 0x1

    if-lt v11, v12, :cond_a

    .line 1437
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1438
    .restart local v2    # "high_password_tmp":[Ljava/lang/String;
    array-length v11, v2

    const/4 v12, 0x2

    if-lt v11, v12, :cond_9

    .line 1439
    const/4 v11, 0x1

    aget-object v9, v2, v11

    goto/16 :goto_0

    .line 1441
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1444
    .end local v2    # "high_password_tmp":[Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1447
    .end local v3    # "high_password_tmps":[Ljava/lang/String;
    :cond_b
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_e

    .line 1449
    const/4 v11, 0x1

    aget-object v11, v10, v11

    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1451
    .local v6, "low_password_tmps":[Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x1

    if-lt v11, v12, :cond_d

    .line 1453
    const/4 v11, 0x0

    aget-object v11, v6, v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1454
    .local v5, "low_password_tmp":[Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_c

    .line 1455
    const/4 v11, 0x1

    aget-object v9, v5, v11

    goto/16 :goto_0

    .line 1457
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1460
    .end local v5    # "low_password_tmp":[Ljava/lang/String;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1464
    .end local v6    # "low_password_tmps":[Ljava/lang/String;
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public static getVideoUrlFromUrlss(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "urlss"    # Ljava/lang/String;
    .param p1, "next"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1288
    const/4 v6, 0x0

    .line 1290
    .local v6, "url":Ljava/lang/String;
    const-string v8, "geminihighlowgemini"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1291
    .local v7, "urls":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "url length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1292
    array-length v8, v7

    if-ge v8, v12, :cond_5

    .line 1294
    array-length v8, v7

    if-ge v8, v10, :cond_1

    .line 1296
    move-object v6, p0

    .line 1297
    sput v11, Lcom/gemini/play/BACKplayer;->urlss_num:I

    .line 1381
    :cond_0
    :goto_0
    return-object v6

    .line 1299
    :cond_1
    array-length v8, v7

    if-ne v8, v10, :cond_0

    .line 1301
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_4

    .line 1303
    aget-object v8, v7, v11

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1304
    .local v3, "high_urls":[Ljava/lang/String;
    if-ne p1, v10, :cond_2

    .line 1306
    sget v8, Lcom/gemini/play/BACKplayer;->urlss_num:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/gemini/play/BACKplayer;->urlss_num:I

    .line 1308
    sget v8, Lcom/gemini/play/BACKplayer;->urlss_num:I

    array-length v9, v3

    if-lt v8, v9, :cond_2

    .line 1309
    sput v11, Lcom/gemini/play/BACKplayer;->urlss_num:I

    .line 1313
    :cond_2
    sget v8, Lcom/gemini/play/BACKplayer;->urlss_num:I

    aget-object v8, v3, v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1314
    .local v2, "high_url":[Ljava/lang/String;
    array-length v8, v2

    if-lt v8, v12, :cond_3

    .line 1315
    aget-object v6, v2, v10

    goto :goto_0

    .line 1317
    :cond_3
    aget-object v6, v7, v11

    goto :goto_0

    .line 1321
    .end local v2    # "high_url":[Ljava/lang/String;
    .end local v3    # "high_urls":[Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 1327
    :cond_5
    if-ne p1, v10, :cond_8

    .line 1329
    sget v8, Lcom/gemini/play/BACKplayer;->urlss_num:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/gemini/play/BACKplayer;->urlss_num:I

    .line 1330
    aget-object v8, v7, v11

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1331
    .restart local v3    # "high_urls":[Ljava/lang/String;
    aget-object v8, v7, v10

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1332
    .local v5, "low_urls":[Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/gemini/play/BACKplayer;->getMergeArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1333
    .local v1, "all_urls":[Ljava/lang/String;
    sget v8, Lcom/gemini/play/BACKplayer;->urlss_num:I

    array-length v9, v1

    if-lt v8, v9, :cond_6

    .line 1334
    sput v11, Lcom/gemini/play/BACKplayer;->urlss_num:I

    .line 1336
    :cond_6
    sget v8, Lcom/gemini/play/BACKplayer;->urlss_num:I

    aget-object v8, v1, v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, "all_url":[Ljava/lang/String;
    array-length v8, v0

    if-lt v8, v12, :cond_7

    .line 1338
    aget-object v6, v0, v10

    goto :goto_0

    .line 1340
    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    .line 1345
    .end local v0    # "all_url":[Ljava/lang/String;
    .end local v1    # "all_urls":[Ljava/lang/String;
    .end local v3    # "high_urls":[Ljava/lang/String;
    .end local v5    # "low_urls":[Ljava/lang/String;
    :cond_8
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_b

    .line 1347
    aget-object v8, v7, v11

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1348
    .restart local v3    # "high_urls":[Ljava/lang/String;
    array-length v8, v3

    if-lt v8, v10, :cond_a

    .line 1350
    aget-object v8, v3, v11

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1351
    .restart local v2    # "high_url":[Ljava/lang/String;
    array-length v8, v2

    if-lt v8, v12, :cond_9

    .line 1352
    aget-object v6, v2, v10

    goto/16 :goto_0

    .line 1354
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1357
    .end local v2    # "high_url":[Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1360
    .end local v3    # "high_urls":[Ljava/lang/String;
    :cond_b
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_e

    .line 1362
    aget-object v8, v7, v10

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1363
    .restart local v5    # "low_urls":[Ljava/lang/String;
    array-length v8, v5

    if-lt v8, v10, :cond_d

    .line 1365
    aget-object v8, v5, v11

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1366
    .local v4, "low_url":[Ljava/lang/String;
    array-length v8, v4

    if-lt v8, v12, :cond_c

    .line 1367
    aget-object v6, v4, v10

    goto/16 :goto_0

    .line 1369
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1372
    .end local v4    # "low_url":[Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1376
    .end local v5    # "low_urls":[Ljava/lang/String;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public static isPlaying()Z
    .locals 2

    .prologue
    .line 1632
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    if-eqz v0, :cond_0

    .line 1633
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v0

    .line 1638
    :goto_0
    return v0

    .line 1634
    :cond_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_1

    .line 1635
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 1638
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static playVideo(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 3
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "next"    # Z
    .param p3, "seek"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1614
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1616
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 1617
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 1618
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-static {p0, v0, p1, p3, p2}, Lcom/gemini/play/BACKplayer;->playVideoForHard(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;IZ)V

    .line 1627
    :goto_0
    sput v1, Lcom/gemini/play/BACKplayer;->check_playing_times:I

    .line 1628
    return-void

    .line 1622
    :cond_0
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 1623
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 1624
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {p0, v0, p1, p3, p2}, Lcom/gemini/play/BACKplayer;->playVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public static playVideoForHard(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;IZ)V
    .locals 7
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "mVideoView"    # Lcom/gemini/play/VideoView;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "seek"    # I
    .param p4, "next"    # Z

    .prologue
    .line 779
    const/4 v5, 0x0

    sput-boolean v5, Lcom/gemini/play/BACKplayer;->player_isexit:Z

    .line 781
    invoke-virtual {p1}, Lcom/gemini/play/VideoView;->pause()V

    .line 782
    invoke-virtual {p1}, Lcom/gemini/play/VideoView;->reset()V

    .line 784
    invoke-static {}, Lcom/gemini/play/Ghttp;->stop()V

    .line 786
    sget-object v5, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 787
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 788
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 791
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 888
    :cond_1
    :goto_0
    return-void

    .line 794
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/gemini/play/BACKplayer;->playbackGetVideoUrl(I)Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, "url":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/gemini/play/BACKplayer;->playbackGetVideoPassword(I)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "password":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 799
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v5

    const-string v6, "quanxing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 801
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video play:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " password:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 803
    sget-object v5, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    .line 804
    sget-object v1, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 819
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "back url 1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 821
    if-eqz v3, :cond_1

    .line 824
    new-instance v0, Lcom/gemini/play/BACKplayer$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/gemini/play/BACKplayer$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/gemini/play/VideoView;)V

    .line 886
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-static {p0, v3, p3, v0}, Lcom/gemini/play/BACKplayer;->playVideoMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    .line 807
    .end local v0    # "pHandler":Landroid/os/Handler;
    :cond_3
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, "urlss":Ljava/lang/String;
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, "passwordss":Ljava/lang/String;
    invoke-static {v4, p4}, Lcom/gemini/play/BACKplayer;->getVideoUrlFromUrlss(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    .line 811
    invoke-static {v2, p4}, Lcom/gemini/play/BACKplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static playVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IZ)V
    .locals 7
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "seek"    # I
    .param p4, "next"    # Z

    .prologue
    .line 699
    const/4 v5, 0x0

    sput-boolean v5, Lcom/gemini/play/BACKplayer;->player_isexit:Z

    .line 701
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 703
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/gemini/play/BACKplayer;->playbackGetVideoUrl(I)Ljava/lang/String;

    move-result-object v3

    .line 704
    .local v3, "url":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/gemini/play/BACKplayer;->playbackGetVideoPassword(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "password":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v5

    const-string v6, "quanxing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 710
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video play:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " password:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 712
    sget-object v5, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    .line 713
    sget-object v1, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 724
    :goto_1
    invoke-virtual {p1}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 728
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "back url 1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 730
    if-eqz v3, :cond_0

    .line 733
    new-instance v0, Lcom/gemini/play/BACKplayer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/gemini/play/BACKplayer$1;-><init>(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;)V

    .line 772
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-static {p0, v3, p3, v0}, Lcom/gemini/play/BACKplayer;->playVideoMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    .line 716
    .end local v0    # "pHandler":Landroid/os/Handler;
    :cond_2
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 717
    .local v4, "urlss":Ljava/lang/String;
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, "passwordss":Ljava/lang/String;
    invoke-static {v4, p4}, Lcom/gemini/play/BACKplayer;->getVideoUrlFromUrlss(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    .line 720
    invoke-static {v2, p4}, Lcom/gemini/play/BACKplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static playVideoFull(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "_this"    # Landroid/app/Activity;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 1474
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1475
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    sget-object v2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1476
    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1490
    return-void
.end method

.method public static playVideoMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "seek"    # I
    .param p3, "pHandler"    # Landroid/os/Handler;

    .prologue
    .line 892
    if-nez p1, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 895
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/BACKplayer;->player_isexit:Z

    .line 897
    const-string v0, "p2p://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/BACKplayer$3;

    invoke-direct {v1, p1, p3}, Lcom/gemini/play/BACKplayer$3;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 912
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 914
    :cond_1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rtsp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 916
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "back url 2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 917
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/BACKplayer$4;

    invoke-direct {v1, p1, p3}, Lcom/gemini/play/BACKplayer$4;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 930
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 934
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/BACKplayer$5;

    invoke-direct {v1, p1, p2, p3}, Lcom/gemini/play/BACKplayer$5;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1144
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static playVideoMini()V
    .locals 0

    .prologue
    .line 1495
    return-void
.end method

.method private static playVideo_p2p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1240
    const/4 v1, 0x0

    .line 1242
    .local v1, "murl":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, "arrs":[Ljava/lang/String;
    aget-object v3, v0, v8

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1244
    .local v2, "opts":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 1245
    const/4 v3, 0x0

    .line 1274
    :goto_0
    return-object v3

    .line 1247
    :cond_0
    aget-object v3, v2, v6

    aget-object v4, v0, v7

    sget-object v5, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v5}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v6}, Lcom/gemini/play/MGplayer;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 1249
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AML8726"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1251
    array-length v3, v2

    if-lt v3, v7, :cond_1

    .line 1252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v3, v1

    .line 1274
    goto :goto_0

    .line 1254
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1257
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HI3716M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1259
    array-length v3, v2

    if-lt v3, v7, :cond_3

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/gemini/play/BACKplayer;->createPlaylist(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1263
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/playlist.m3u8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1262
    :cond_3
    aget-object v3, v0, v8

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/gemini/play/BACKplayer;->createPlaylist(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 1267
    :cond_4
    array-length v3, v2

    if-lt v3, v7, :cond_5

    .line 1268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1270
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public static playbackClear()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    :cond_0
    return-void
.end method

.method public static playbackExistVideoId(I)Z
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 402
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v1

    .line 403
    .local v1, "status":Lcom/gemini/play/PlaybackStatus;
    iget v2, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v2, p0, :cond_0

    .line 405
    const/4 v2, 0x1

    .line 408
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return v2

    .line 400
    .restart local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static playbackGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 89
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    iget-object v0, v0, Lcom/gemini/play/PlaybackStatus;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static playbackGetIntroductionID(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 170
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v2

    .line 171
    .local v2, "status":Lcom/gemini/play/PlaybackStatus;
    iget v3, v2, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 173
    iget-object v1, v2, Lcom/gemini/play/PlaybackStatus;->introid:Ljava/lang/String;

    .line 177
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v1

    .line 168
    .restart local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static playbackGetVideoImage(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 314
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v2

    .line 315
    .local v2, "status":Lcom/gemini/play/PlaybackStatus;
    iget v3, v2, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 317
    iget-object v1, v2, Lcom/gemini/play/PlaybackStatus;->image:Ljava/lang/String;

    .line 321
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v1

    .line 312
    .restart local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static playbackGetVideoIntroduction(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 285
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v2

    .line 286
    .local v2, "status":Lcom/gemini/play/PlaybackStatus;
    iget v3, v2, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 288
    iget-object v1, v2, Lcom/gemini/play/PlaybackStatus;->introduction:Ljava/lang/String;

    .line 295
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v1

    .line 283
    .restart local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static playbackGetVideoIntroductions(II)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "index"    # I

    .prologue
    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 464
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v2

    .line 465
    .local v2, "status":Lcom/gemini/play/PlaybackStatus;
    iget v3, v2, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 467
    iget-object v1, v2, Lcom/gemini/play/PlaybackStatus;->introductions:[Ljava/lang/String;

    .line 468
    .local v1, "introductions":[Ljava/lang/String;
    aget-object v3, v1, p1

    .line 471
    .end local v1    # "introductions":[Ljava/lang/String;
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v3

    .line 462
    .restart local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static playbackGetVideoName(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 156
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v2

    .line 157
    .local v2, "status":Lcom/gemini/play/PlaybackStatus;
    iget v3, v2, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 159
    iget-object v1, v2, Lcom/gemini/play/PlaybackStatus;->name:Ljava/lang/String;

    .line 163
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v1

    .line 154
    .restart local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static playbackGetVideoNameForward(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/BACKplayer;->playbackGetVideoNameForward(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static playbackGetVideoNameForward(IZ)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    .line 239
    if-nez p1, :cond_3

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 243
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v3

    .line 244
    .local v3, "status":Lcom/gemini/play/PlaybackStatus;
    iget v5, v3, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v5, p0, :cond_1

    .line 246
    add-int/lit8 v1, v0, -0x1

    .line 247
    .local v1, "k":I
    if-gez v1, :cond_0

    .line 248
    const-string v2, ""

    .line 277
    .end local v1    # "k":I
    .end local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v2

    .line 249
    .restart local v1    # "k":I
    .restart local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v5

    iget-object v2, v5, Lcom/gemini/play/PlaybackStatus;->name:Ljava/lang/String;

    .line 250
    .local v2, "name":Ljava/lang/String;
    goto :goto_1

    .line 241
    .end local v1    # "k":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 257
    .end local v0    # "i":I
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v4, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/PlaybackStatus;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v5, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 260
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v3

    .line 261
    .restart local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    iget v5, v3, Lcom/gemini/play/PlaybackStatus;->id:I

    invoke-static {v5}, Lcom/gemini/play/BACKplayer;->playbackIsVideoTypePs(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 262
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 265
    .end local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 267
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gemini/play/PlaybackStatus;

    .line 268
    .restart local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    iget v5, v3, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v5, p0, :cond_7

    .line 270
    add-int/lit8 v1, v0, -0x1

    .line 271
    .restart local v1    # "k":I
    if-gez v1, :cond_6

    .line 272
    const-string v2, ""

    goto :goto_1

    .line 273
    :cond_6
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/PlaybackStatus;

    iget-object v2, v5, Lcom/gemini/play/PlaybackStatus;->name:Ljava/lang/String;

    .line 274
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 265
    .end local v1    # "k":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 277
    .end local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_8
    const-string v2, ""

    goto :goto_1
.end method

.method public static playbackGetVideoNameNext(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/BACKplayer;->playbackGetVideoNameNext(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static playbackGetVideoNameNext(IZ)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    .line 192
    if-nez p1, :cond_3

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 196
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v3

    .line 197
    .local v3, "status":Lcom/gemini/play/PlaybackStatus;
    iget v5, v3, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v5, p0, :cond_1

    if-nez p1, :cond_1

    .line 199
    add-int/lit8 v1, v0, 0x1

    .line 200
    .local v1, "k":I
    sget-object v5, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 201
    const-string v2, ""

    .line 232
    .end local v1    # "k":I
    .end local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v2

    .line 203
    .restart local v1    # "k":I
    .restart local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v5

    iget-object v2, v5, Lcom/gemini/play/PlaybackStatus;->name:Ljava/lang/String;

    .line 204
    .local v2, "name":Ljava/lang/String;
    goto :goto_1

    .line 194
    .end local v1    # "k":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v4, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/PlaybackStatus;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v5, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 214
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v3

    .line 215
    .restart local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    iget v5, v3, Lcom/gemini/play/PlaybackStatus;->id:I

    invoke-static {v5}, Lcom/gemini/play/BACKplayer;->playbackIsVideoTypePs(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 216
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 219
    .end local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 221
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gemini/play/PlaybackStatus;

    .line 222
    .restart local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    iget v5, v3, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v5, p0, :cond_7

    .line 224
    add-int/lit8 v1, v0, 0x1

    .line 225
    .restart local v1    # "k":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_6

    .line 226
    const-string v2, ""

    goto :goto_1

    .line 228
    :cond_6
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/PlaybackStatus;

    iget-object v2, v5, Lcom/gemini/play/PlaybackStatus;->name:Ljava/lang/String;

    .line 229
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 219
    .end local v1    # "k":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 232
    .end local v3    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_8
    const-string v2, ""

    goto :goto_1
.end method

.method public static playbackGetVideoNum(I)I
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 415
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v1

    .line 416
    .local v1, "status":Lcom/gemini/play/PlaybackStatus;
    iget v2, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v2, p0, :cond_0

    .line 421
    .end local v0    # "i":I
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return v0

    .line 413
    .restart local v0    # "i":I
    .restart local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static playbackGetVideoNum(IZ)I
    .locals 5
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    const/4 v3, -0x1

    .line 426
    if-nez p1, :cond_3

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 430
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v1

    .line 431
    .local v1, "status":Lcom/gemini/play/PlaybackStatus;
    iget v4, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v4, p0, :cond_1

    .line 456
    .end local v0    # "i":I
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    :goto_1
    return v0

    .line 428
    .restart local v0    # "i":I
    .restart local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_2
    move v0, v3

    .line 436
    goto :goto_1

    .line 440
    .end local v0    # "i":I
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v2, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/PlaybackStatus;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v4, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 443
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v1

    .line 444
    .restart local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    iget v4, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    invoke-static {v4}, Lcom/gemini/play/BACKplayer;->playbackIsVideoTypePs(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 445
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 448
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 450
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/PlaybackStatus;

    .line 451
    .restart local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    iget v4, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    if-eq v4, p0, :cond_0

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_6
    move v0, v3

    .line 456
    goto :goto_1
.end method

.method public static playbackGetVideoPassword(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 328
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v2

    .line 329
    .local v2, "status":Lcom/gemini/play/PlaybackStatus;
    iget v3, v2, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 331
    iget-object v1, v2, Lcom/gemini/play/PlaybackStatus;->password:Ljava/lang/String;

    .line 335
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v1

    .line 326
    .restart local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static playbackGetVideoSource(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 342
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v2

    .line 343
    .local v2, "status":Lcom/gemini/play/PlaybackStatus;
    iget v3, v2, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 345
    iget-object v1, v2, Lcom/gemini/play/PlaybackStatus;->source:Ljava/lang/String;

    .line 349
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v1

    .line 340
    .restart local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static playbackGetVideoType(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 356
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v1

    .line 357
    .local v1, "status":Lcom/gemini/play/PlaybackStatus;
    iget v3, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 359
    iget-object v2, v1, Lcom/gemini/play/PlaybackStatus;->type:Ljava/lang/String;

    .line 363
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v2

    .line 354
    .restart local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static playbackGetVideoUrl(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 141
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v1

    .line 142
    .local v1, "status":Lcom/gemini/play/PlaybackStatus;
    iget v3, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 144
    iget-object v2, v1, Lcom/gemini/play/PlaybackStatus;->url:Ljava/lang/String;

    .line 149
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :goto_1
    return-object v2

    .line 139
    .restart local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static playbackIdGet(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 104
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    iget v0, v0, Lcom/gemini/play/PlaybackStatus;->id:I

    return v0
.end method

.method public static playbackImageGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 94
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    iget-object v0, v0, Lcom/gemini/play/PlaybackStatus;->image:Ljava/lang/String;

    return-object v0
.end method

.method public static playbackIntroductionGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 119
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    iget-object v0, v0, Lcom/gemini/play/PlaybackStatus;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public static playbackIntroidGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 134
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    iget-object v0, v0, Lcom/gemini/play/PlaybackStatus;->introid:Ljava/lang/String;

    return-object v0
.end method

.method public static playbackIsVideoTypePs(I)Z
    .locals 8
    .param p0, "id"    # I

    .prologue
    .line 368
    const/4 v5, 0x0

    .line 369
    .local v5, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v6, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 371
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v4

    .line 372
    .local v4, "status":Lcom/gemini/play/PlaybackStatus;
    iget v6, v4, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v6, p0, :cond_0

    .line 374
    iget-object v5, v4, Lcom/gemini/play/PlaybackStatus;->type:Ljava/lang/String;

    .line 369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v4    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 380
    if-nez v5, :cond_3

    .line 381
    const/4 v3, 0x0

    .line 395
    :cond_2
    :goto_1
    return v3

    .line 383
    :cond_3
    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "ids":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 385
    .local v3, "isneedps":Z
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type need ps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-static {v7}, Lcom/gemini/play/BACKplayer;->playbackTypeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 388
    aget-object v6, v1, v2

    invoke-static {v6}, Lcom/gemini/play/BACKplayer;->playbackTypeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 390
    const/4 v3, 0x1

    .line 391
    goto :goto_1

    .line 385
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static playbackNameGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 99
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    iget-object v0, v0, Lcom/gemini/play/PlaybackStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static playbackPasswordGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 124
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    iget-object v0, v0, Lcom/gemini/play/PlaybackStatus;->password:Ljava/lang/String;

    return-object v0
.end method

.method public static playbackPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "introduction"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "introid"    # Ljava/lang/String;

    .prologue
    .line 494
    new-instance v1, Lcom/gemini/play/PlaybackStatus;

    invoke-direct {v1}, Lcom/gemini/play/PlaybackStatus;-><init>()V

    .line 495
    .local v1, "status":Lcom/gemini/play/PlaybackStatus;
    iput-object p1, v1, Lcom/gemini/play/PlaybackStatus;->name:Ljava/lang/String;

    .line 496
    iput-object p2, v1, Lcom/gemini/play/PlaybackStatus;->image:Ljava/lang/String;

    .line 497
    iput-object p3, v1, Lcom/gemini/play/PlaybackStatus;->url:Ljava/lang/String;

    .line 498
    iput p0, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    .line 499
    iput-object p5, v1, Lcom/gemini/play/PlaybackStatus;->type:Ljava/lang/String;

    .line 500
    iput-object p4, v1, Lcom/gemini/play/PlaybackStatus;->password:Ljava/lang/String;

    .line 501
    iput-object p6, v1, Lcom/gemini/play/PlaybackStatus;->introduction:Ljava/lang/String;

    .line 502
    iget-object v2, v1, Lcom/gemini/play/PlaybackStatus;->introductions:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p6, v2, v3

    .line 503
    iput-object p7, v1, Lcom/gemini/play/PlaybackStatus;->source:Ljava/lang/String;

    .line 504
    iput-object p8, v1, Lcom/gemini/play/PlaybackStatus;->introid:Ljava/lang/String;

    .line 506
    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gemini/play/MGplayer;->images_icon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v3}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/images/livepic/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gemini/play/MGplayer;->images_icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gemini/play/MGplayer;->donwFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/gemini/play/BACKplayer;->playbackExistVideoId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 522
    sget-object v2, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 525
    :goto_1
    return v2

    .line 510
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 525
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static playbackPush2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "introduction"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "introid"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-static {}, Lcom/gemini/play/BACKplayer;->previewDate()V

    .line 534
    new-instance v6, Lcom/gemini/play/PlaybackStatus;

    invoke-direct {v6}, Lcom/gemini/play/PlaybackStatus;-><init>()V

    .line 535
    .local v6, "status":Lcom/gemini/play/PlaybackStatus;
    iput-object p1, v6, Lcom/gemini/play/PlaybackStatus;->name:Ljava/lang/String;

    .line 536
    iput-object p2, v6, Lcom/gemini/play/PlaybackStatus;->image:Ljava/lang/String;

    .line 537
    iput-object p3, v6, Lcom/gemini/play/PlaybackStatus;->url:Ljava/lang/String;

    .line 538
    iput p0, v6, Lcom/gemini/play/PlaybackStatus;->id:I

    .line 539
    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/gemini/play/PlaybackStatus;->type:Ljava/lang/String;

    .line 540
    iput-object p4, v6, Lcom/gemini/play/PlaybackStatus;->password:Ljava/lang/String;

    .line 543
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/gemini/play/PlaybackStatus;->source:Ljava/lang/String;

    .line 544
    move-object/from16 v0, p8

    iput-object v0, v6, Lcom/gemini/play/PlaybackStatus;->introid:Ljava/lang/String;

    .line 546
    const/4 v5, 0x0

    .local v5, "kk":I
    :goto_0
    sget-object v7, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 548
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2 previewdates[kk]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 546
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-le v7, v8, :cond_3

    .line 553
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "geminipreview"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "introductions":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_3

    .line 556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playbackPush2 introductions length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 557
    aget-object v7, v3, v2

    const-string v8, "geminidate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, "item":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    .line 560
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-string v9, "#$"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 561
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-string v9, "$#"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 562
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string v9, "#$"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 563
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string v9, "$#"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 564
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item[0]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item[1]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playbackPush2 previewdates length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 567
    const/4 v5, 0x0

    :goto_2
    sget-object v7, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_1

    .line 569
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "previewdates[kk]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 570
    sget-object v7, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    aget-object v7, v7, v5

    if-eqz v7, :cond_2

    sget-object v7, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    aget-object v7, v7, v5

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    const/4 v7, 0x7

    if-ge v5, v7, :cond_2

    .line 572
    iget-object v7, v6, Lcom/gemini/play/PlaybackStatus;->introductions:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v7, v5

    .line 573
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playbackPush2 introductions["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/gemini/play/PlaybackStatus;->introductions:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 574
    if-nez v5, :cond_1

    .line 576
    const/4 v7, 0x1

    aget-object v7, v4, v7

    iput-object v7, v6, Lcom/gemini/play/PlaybackStatus;->introduction:Ljava/lang/String;

    .line 554
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 567
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 585
    .end local v2    # "ii":I
    .end local v3    # "introductions":[Ljava/lang/String;
    .end local v4    # "item":[Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/gemini/play/MGplayer;->images_icon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 588
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/images/livepic/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/gemini/play/MGplayer;->images_icon:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gemini/play/MGplayer;->donwFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_4
    :goto_3
    invoke-static {p0}, Lcom/gemini/play/BACKplayer;->playbackExistVideoId(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 601
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playback no exist video push id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 602
    sget-object v7, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 605
    :goto_4
    return v7

    .line 589
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 605
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v7, 0x1

    goto :goto_4
.end method

.method public static playbackSetVideoIntroduction(ILjava/lang/String;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "preview"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 302
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v1

    .line 303
    .local v1, "status":Lcom/gemini/play/PlaybackStatus;
    iget v2, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v2, p0, :cond_0

    .line 305
    iput-object p1, v1, Lcom/gemini/play/PlaybackStatus;->introduction:Ljava/lang/String;

    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    return-void
.end method

.method public static playbackSetVideoIntroductions(IILjava/lang/String;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "index"    # I
    .param p2, "preview"    # Ljava/lang/String;

    .prologue
    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 478
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;

    move-result-object v1

    .line 479
    .local v1, "status":Lcom/gemini/play/PlaybackStatus;
    iget v2, v1, Lcom/gemini/play/PlaybackStatus;->id:I

    if-ne v2, p0, :cond_0

    .line 481
    iget-object v2, v1, Lcom/gemini/play/PlaybackStatus;->introductions:[Ljava/lang/String;

    aput-object p2, v2, p1

    .line 476
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    .end local v1    # "status":Lcom/gemini/play/PlaybackStatus;
    :cond_1
    return-void
.end method

.method public static playbackSize()I
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static playbackSourceGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 129
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    iget-object v0, v0, Lcom/gemini/play/PlaybackStatus;->source:Ljava/lang/String;

    return-object v0
.end method

.method public static playbackStatusGet(I)Lcom/gemini/play/PlaybackStatus;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 109
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    return-object v0
.end method

.method public static playbackTypeClear()V
    .locals 1

    .prologue
    .line 678
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 680
    :cond_0
    return-void
.end method

.method public static playbackTypeGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 114
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlaybackStatus;

    iget-object v0, v0, Lcom/gemini/play/PlaybackStatus;->type:Ljava/lang/String;

    return-object v0
.end method

.method public static playbackTypeIdGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 629
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    if-gez p0, :cond_1

    .line 630
    :cond_0
    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlayBackTypeStatus;

    iget-object v0, v0, Lcom/gemini/play/PlayBackTypeStatus;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public static playbackTypeNameGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 622
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    if-gez p0, :cond_1

    .line 623
    :cond_0
    const-string v0, ""

    .line 624
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/PlayBackTypeStatus;

    iget-object v0, v0, Lcom/gemini/play/PlayBackTypeStatus;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public static playbackTypeNameGetFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 666
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 668
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/PlayBackTypeStatus;

    iget-object v1, v1, Lcom/gemini/play/PlayBackTypeStatus;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/PlayBackTypeStatus;

    iget-object v1, v1, Lcom/gemini/play/PlayBackTypeStatus;->type:Ljava/lang/String;

    .line 673
    :goto_1
    return-object v1

    .line 666
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static playbackTypeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 641
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 643
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/PlayBackTypeStatus;

    iget-object v1, v1, Lcom/gemini/play/PlayBackTypeStatus;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/PlayBackTypeStatus;

    iget-object v1, v1, Lcom/gemini/play/PlayBackTypeStatus;->needps:Ljava/lang/String;

    .line 648
    :goto_1
    return-object v1

    .line 641
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public static playbackTypePasswordGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 655
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/PlayBackTypeStatus;

    iget-object v1, v1, Lcom/gemini/play/PlayBackTypeStatus;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/PlayBackTypeStatus;

    iget-object v1, v1, Lcom/gemini/play/PlayBackTypeStatus;->ps:Ljava/lang/String;

    .line 660
    :goto_1
    return-object v1

    .line 653
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static playbackTypePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "needps"    # Ljava/lang/String;
    .param p2, "ps"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v0, Lcom/gemini/play/PlayBackTypeStatus;

    invoke-direct {v0}, Lcom/gemini/play/PlayBackTypeStatus;-><init>()V

    .line 612
    .local v0, "status":Lcom/gemini/play/PlayBackTypeStatus;
    iput-object p0, v0, Lcom/gemini/play/PlayBackTypeStatus;->id:Ljava/lang/String;

    .line 613
    iput-object p1, v0, Lcom/gemini/play/PlayBackTypeStatus;->needps:Ljava/lang/String;

    .line 614
    iput-object p4, v0, Lcom/gemini/play/PlayBackTypeStatus;->type:Ljava/lang/String;

    .line 615
    iput-object p3, v0, Lcom/gemini/play/PlayBackTypeStatus;->key:Ljava/lang/String;

    .line 616
    iput-object p2, v0, Lcom/gemini/play/PlayBackTypeStatus;->ps:Ljava/lang/String;

    .line 617
    sget-object v1, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static playbackTypeSize()I
    .locals 1

    .prologue
    .line 636
    sget-object v0, Lcom/gemini/play/BACKplayer;->playbackTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private static previewDate()V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 1556
    sget-boolean v5, Lcom/gemini/play/BACKplayer;->preivewok:Z

    if-ne v5, v10, :cond_0

    .line 1576
    .local v3, "ii":I
    :goto_0
    return-void

    .line 1559
    .end local v3    # "ii":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "ii":I
    :goto_1
    if-ge v3, v12, :cond_2

    .line 1561
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1562
    .local v0, "calendar":Ljava/util/Calendar;
    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 1564
    new-instance v1, Ljava/util/Date;

    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1565
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1567
    .end local v1    # "date":Ljava/util/Date;
    :cond_1
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1568
    .local v2, "day":I
    sub-int v5, v2, v3

    invoke-virtual {v0, v11, v5}, Ljava/util/Calendar;->set(II)V

    .line 1569
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1570
    .local v4, "week":I
    sget-object v5, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1571
    sget-object v5, Lcom/gemini/play/BACKplayer;->previewweeks:[Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->week(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MGplayer.seconds_prc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " previewdates[ii]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/BACKplayer;->previewdates:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1559
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1575
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "day":I
    .end local v4    # "week":I
    :cond_2
    sput-boolean v10, Lcom/gemini/play/BACKplayer;->preivewok:Z

    goto :goto_0
.end method

.method private static saveCurrentID(Ljava/lang/String;)V
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 684
    if-nez p0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 687
    :cond_0
    sget-object v1, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v2, "back"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 688
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "current_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 689
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static stopCheckVideo()V
    .locals 1

    .prologue
    .line 1644
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/BACKplayer;->check_playing_running:Z

    .line 1645
    const-string v0, "back check_playing_running false"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1646
    return-void
.end method

.method public static stopVideoForHard(Lcom/gemini/play/VideoView;)V
    .locals 1
    .param p0, "mVideoView"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 1150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gemini/play/BACKplayer;->player_isexit:Z

    .line 1152
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1154
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->pause()V

    .line 1158
    :cond_0
    return-void
.end method

.method public static stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V
    .locals 1
    .param p0, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 1162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gemini/play/BACKplayer;->player_isexit:Z

    .line 1164
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1166
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 1171
    return-void
.end method
