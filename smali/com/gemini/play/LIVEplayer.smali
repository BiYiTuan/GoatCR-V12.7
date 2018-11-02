.class public Lcom/gemini/play/LIVEplayer;
.super Ljava/lang/Object;
.source "LIVEplayer.java"


# static fields
.field public static SoftOrHard:Z

.field public static VideoViewH:Lcom/gemini/play/VideoView;

.field public static VideoViewH2:Lcom/gemini/play/ExoPlayerView;

.field public static VideoViewS:Lorg/videolan/vlc/VlcVideoView;

.field public static VideoViewS2:Lio/vov/vitamio/widget/VideoView;

.field public static _this:Landroid/content/Context;

.field public static adimageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static check_currentposition:J

.field public static check_isplaying:I

.field public static check_playing_currentid:Ljava/lang/String;

.field public static check_playing_line:I

.field public static check_playing_running:Z

.field public static check_playing_times:I

.field public static currentID:Ljava/lang/String;

.field public static currentLine:I

.field public static currentSeek:I

.field public static currentType:Ljava/lang/String;

.field public static currentURL:Ljava/lang/String;

.field public static currentUseHlsPlugin:Z

.field public static enablelsplugin:I

.field public static geminipassword9_thread:Ljava/lang/Thread;

.field public static isstop_checkVideo:Z

.field public static p2p_password:Ljava/lang/String;

.field public static passwordsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/TypePasswords;",
            ">;"
        }
    .end annotation
.end field

.field public static player_isexit:Z

.field public static show_playlist_image:Z

.field public static show_ps_playlist:Z

.field public static show_type_find:Z

.field public static speed_nothings_times:I

.field public static type2Array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/Type2Status;",
            ">;"
        }
    .end annotation
.end field

.field public static typeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/TypeStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static typePasswordOK:Z

.field public static urlArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/UrlStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static urlss_num:I

.field public static vjms:Lcom/nagasoft/player/VJPlayer;

.field public static vjmsinterface:Lcom/nagasoft/player/UrlChanged;

.field public static watermask:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/LIVEplayer;->type2Array:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/LIVEplayer;->adimageArray:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/LIVEplayer;->passwordsArray:Ljava/util/ArrayList;

    .line 75
    sput-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 76
    sput-object v3, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    .line 77
    sput-object v3, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    .line 78
    sput v2, Lcom/gemini/play/LIVEplayer;->currentLine:I

    .line 79
    sput v2, Lcom/gemini/play/LIVEplayer;->currentSeek:I

    .line 80
    sput-boolean v2, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    .line 82
    sput v4, Lcom/gemini/play/LIVEplayer;->enablelsplugin:I

    .line 83
    sput-boolean v4, Lcom/gemini/play/LIVEplayer;->SoftOrHard:Z

    .line 85
    sput v2, Lcom/gemini/play/LIVEplayer;->urlss_num:I

    .line 87
    sput-boolean v2, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    .line 89
    sput-object v3, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    .line 90
    sput-object v3, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    .line 91
    sput-object v3, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    .line 92
    sput-object v3, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    .line 94
    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 95
    sput-boolean v2, Lcom/gemini/play/LIVEplayer;->check_playing_running:Z

    .line 96
    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 98
    sput-object v3, Lcom/gemini/play/LIVEplayer;->watermask:Ljava/lang/String;

    .line 100
    sput-boolean v4, Lcom/gemini/play/LIVEplayer;->show_playlist_image:Z

    .line 102
    sput-boolean v2, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    .line 104
    sput-object v3, Lcom/gemini/play/LIVEplayer;->p2p_password:Ljava/lang/String;

    .line 106
    sput-boolean v2, Lcom/gemini/play/LIVEplayer;->isstop_checkVideo:Z

    .line 108
    sput-object v3, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    .line 109
    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_line:I

    .line 110
    sput v2, Lcom/gemini/play/LIVEplayer;->check_isplaying:I

    .line 111
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 113
    sput-boolean v4, Lcom/gemini/play/LIVEplayer;->show_type_find:Z

    .line 117
    sput-object v3, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    .line 119
    sput-boolean v2, Lcom/gemini/play/LIVEplayer;->player_isexit:Z

    .line 121
    sput-object v3, Lcom/gemini/play/LIVEplayer;->geminipassword9_thread:Ljava/lang/Thread;

    .line 3970
    new-instance v0, Lcom/gemini/play/LIVEplayer$26;

    invoke-direct {v0}, Lcom/gemini/play/LIVEplayer$26;-><init>()V

    sput-object v0, Lcom/gemini/play/LIVEplayer;->vjmsinterface:Lcom/nagasoft/player/UrlChanged;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/gemini/play/LIVEplayer;->saveCurrentID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Handler;

    .prologue
    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/gemini/play/LIVEplayer;->playVideo_p2p(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 68
    invoke-static {p0}, Lcom/gemini/play/LIVEplayer;->createPlaylist(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static adimageGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "ii"    # I

    .prologue
    .line 1135
    sget-object v0, Lcom/gemini/play/LIVEplayer;->adimageArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static adimageSize()I
    .locals 1

    .prologue
    .line 1131
    sget-object v0, Lcom/gemini/play/LIVEplayer;->adimageArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static adimagepush(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v0, Lcom/gemini/play/LIVEplayer;->adimageArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public static checkVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3705
    sget-boolean v2, Lcom/gemini/play/LIVEplayer;->check_playing_running:Z

    if-ne v2, v3, :cond_0

    .line 3968
    .local v0, "mHandler":Landroid/os/Handler;
    .local v1, "mRunnable":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 3708
    .end local v0    # "mHandler":Landroid/os/Handler;
    .end local v1    # "mRunnable":Ljava/lang/Runnable;
    :cond_0
    sput-boolean v3, Lcom/gemini/play/LIVEplayer;->check_playing_running:Z

    .line 3710
    const/4 v2, 0x0

    sput-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    .line 3711
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_line:I

    .line 3713
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3714
    .restart local v0    # "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/LIVEplayer$25;

    invoke-direct {v1, v0}, Lcom/gemini/play/LIVEplayer$25;-><init>(Landroid/os/Handler;)V

    .line 3967
    .restart local v1    # "mRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static createPlaylist(I)Ljava/lang/String;
    .locals 7
    .param p0, "gplayer_port"    # I

    .prologue
    .line 2830
    :try_start_0
    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v5, "playlist.m3u8"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2832
    .local v2, "outStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#EXTM3U\n#EXT-X-ALLOW-CACHE:YES\n#EXT-X-TARGETDURATION:72000\n#EXT-X-MEDIA-SEQUENCE:1\n#EXTINF:70000,\nhttp://127.0.0.1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2837
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2839
    .local v3, "text":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2840
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 2841
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2849
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

    .line 2851
    .local v1, "murl":Ljava/lang/String;
    return-object v1

    .line 2842
    .end local v1    # "murl":Ljava/lang/String;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2843
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2845
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v3    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2846
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createPlaylist(Ljava/lang/String;I)V
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 2802
    :try_start_0
    sget-object v3, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v4, "playlist.m3u8"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2803
    .local v1, "outStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#EXTM3U\n#EXT-X-TARGETDURATION:1\n#EXT-X-VERSION:2\n#EXT-X-DISCONTINUITY\n#EXTINF:10,\nhttp://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2808
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n#EXT-X-ENDLIST\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2811
    .local v2, "text":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2812
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 2813
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2820
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 2814
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2815
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2817
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .end local v2    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2818
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static downloadImage_thread()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/gemini/play/LIVEplayer$1;

    invoke-direct {v0}, Lcom/gemini/play/LIVEplayer$1;-><init>()V

    .line 266
    invoke-virtual {v0}, Lcom/gemini/play/LIVEplayer$1;->start()V

    .line 267
    return-void
.end method

.method public static existVideoId(I)Z
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 272
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v1

    .line 273
    .local v1, "status":Lcom/gemini/play/UrlStatus;
    iget v2, v1, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v2, p0, :cond_0

    .line 274
    const/4 v2, 0x1

    .line 277
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return v2

    .line 271
    .restart local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getCurrentID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3293
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHttpdPlaylist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/httpd/playlist.m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntroductionID(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 387
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 388
    .local v2, "status":Lcom/gemini/play/UrlStatus;
    iget v3, v2, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 389
    iget-object v1, v2, Lcom/gemini/play/UrlStatus;->introid:Ljava/lang/String;

    .line 393
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v1

    .line 386
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getMergeArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "al"    # [Ljava/lang/String;
    .param p1, "bl"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3298
    move-object v0, p0

    .line 3299
    .local v0, "a":[Ljava/lang/String;
    move-object v1, p1

    .line 3300
    .local v1, "b":[Ljava/lang/String;
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v2, v3, [Ljava/lang/String;

    .line 3301
    .local v2, "c":[Ljava/lang/String;
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3302
    array-length v3, v0

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3303
    return-object v2
.end method

.method public static getStatus(I)Lcom/gemini/play/UrlStatus;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 355
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v1

    .line 356
    .local v1, "status":Lcom/gemini/play/UrlStatus;
    iget v2, v1, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v2, p0, :cond_0

    .line 360
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v1

    .line 354
    .restart local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getVideoIdForward(IZ)I
    .locals 7
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    const/4 v5, -0x1

    .line 682
    sget-object v6, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v5

    .line 685
    :cond_1
    if-nez p1, :cond_5

    .line 686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 687
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v3

    .line 688
    .local v3, "status":Lcom/gemini/play/UrlStatus;
    iget v5, v3, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v5, p0, :cond_3

    .line 689
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 690
    add-int/lit8 v2, v0, -0x1

    .line 691
    .local v2, "k":I
    if-gez v2, :cond_2

    .line 692
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    iget v5, v5, Lcom/gemini/play/UrlStatus;->id:I

    goto :goto_0

    .line 693
    :cond_2
    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    iget v5, v5, Lcom/gemini/play/UrlStatus;->id:I

    goto :goto_0

    .line 686
    .end local v2    # "k":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 696
    .end local v3    # "status":Lcom/gemini/play/UrlStatus;
    :cond_4
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    iget v5, v5, Lcom/gemini/play/UrlStatus;->id:I

    goto :goto_0

    .line 698
    .end local v0    # "i":I
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v4, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    const/4 v1, 0x0

    .line 700
    .local v1, "i_forward":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v6, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 701
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v3

    .line 702
    .restart local v3    # "status":Lcom/gemini/play/UrlStatus;
    iget v6, v3, Lcom/gemini/play/UrlStatus;->id:I

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 703
    iget v6, v3, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v6, p0, :cond_6

    .line 704
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget v5, v5, Lcom/gemini/play/UrlStatus;->id:I

    goto/16 :goto_0

    .line 706
    :cond_6
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    move v1, v0

    .line 700
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 711
    .end local v3    # "status":Lcom/gemini/play/UrlStatus;
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 714
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 715
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gemini/play/UrlStatus;

    .line 717
    .restart local v3    # "status":Lcom/gemini/play/UrlStatus;
    iget v5, v3, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v5, p0, :cond_a

    .line 718
    add-int/lit8 v2, v0, -0x1

    .line 719
    .restart local v2    # "k":I
    if-gez v2, :cond_9

    .line 720
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget v5, v5, Lcom/gemini/play/UrlStatus;->id:I

    goto/16 :goto_0

    .line 721
    :cond_9
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget v5, v5, Lcom/gemini/play/UrlStatus;->id:I

    goto/16 :goto_0

    .line 714
    .end local v2    # "k":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 724
    .end local v3    # "status":Lcom/gemini/play/UrlStatus;
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget v5, v5, Lcom/gemini/play/UrlStatus;->id:I

    goto/16 :goto_0
.end method

.method public static getVideoIdNext(IZ)I
    .locals 7
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 529
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v4

    .line 532
    :cond_1
    if-nez p1, :cond_5

    .line 533
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 534
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 535
    .local v2, "status":Lcom/gemini/play/UrlStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status.id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 536
    iget v4, v2, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v4, p0, :cond_3

    .line 538
    add-int/lit8 v1, v0, 0x1

    .line 539
    .local v1, "k":I
    sget-object v4, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 540
    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v4

    iget v4, v4, Lcom/gemini/play/UrlStatus;->id:I

    goto :goto_0

    .line 542
    :cond_2
    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v4

    iget v4, v4, Lcom/gemini/play/UrlStatus;->id:I

    goto :goto_0

    .line 533
    .end local v1    # "k":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 545
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_4
    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v4

    iget v4, v4, Lcom/gemini/play/UrlStatus;->id:I

    goto :goto_0

    .line 547
    .end local v0    # "i":I
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v3, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 549
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 550
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    iget v5, v2, Lcom/gemini/play/UrlStatus;->id:I

    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 551
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 554
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 557
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 558
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/UrlStatus;

    .line 559
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status.id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 560
    iget v4, v2, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v4, p0, :cond_9

    .line 561
    add-int/lit8 v1, v0, 0x1

    .line 562
    .restart local v1    # "k":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_8

    .line 563
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gemini/play/UrlStatus;

    iget v4, v4, Lcom/gemini/play/UrlStatus;->id:I

    goto/16 :goto_0

    .line 565
    :cond_8
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gemini/play/UrlStatus;

    iget v4, v4, Lcom/gemini/play/UrlStatus;->id:I

    goto/16 :goto_0

    .line 557
    .end local v1    # "k":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 568
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_a
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gemini/play/UrlStatus;

    iget v4, v4, Lcom/gemini/play/UrlStatus;->id:I

    goto/16 :goto_0
.end method

.method public static getVideoImage(I)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 753
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 754
    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v4

    .line 755
    .local v4, "status":Lcom/gemini/play/UrlStatus;
    iget v5, v4, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v5, p0, :cond_1

    .line 756
    iget-object v2, v4, Lcom/gemini/play/UrlStatus;->image:Ljava/lang/String;

    .line 757
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 758
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, "paths":[Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v3, v5

    .line 768
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "paths":[Ljava/lang/String;
    .end local v4    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v0

    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    move-object v0, v2

    .line 764
    goto :goto_1

    .line 753
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v4    # "status":Lcom/gemini/play/UrlStatus;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getVideoIntroduction(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 730
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 731
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 732
    .local v2, "status":Lcom/gemini/play/UrlStatus;
    iget v3, v2, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 733
    iget-object v1, v2, Lcom/gemini/play/UrlStatus;->introduction:Ljava/lang/String;

    .line 740
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v1

    .line 730
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getVideoIntroductions(II)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "index"    # I

    .prologue
    .line 1025
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1026
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 1027
    .local v2, "status":Lcom/gemini/play/UrlStatus;
    iget v3, v2, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 1028
    iget-object v1, v2, Lcom/gemini/play/UrlStatus;->introductions:[Ljava/lang/String;

    .line 1031
    .local v1, "introductions":[Ljava/lang/String;
    aget-object v3, v1, p1

    .line 1034
    .end local v1    # "introductions":[Ljava/lang/String;
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v3

    .line 1025
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getVideoLineCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 3440
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3441
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v2

    .line 3442
    .local v2, "urlss":Ljava/lang/String;
    invoke-static {v2}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3444
    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->getVideoUrlHighCount(Ljava/lang/String;)I

    move-result v0

    .line 3445
    .local v0, "high_count":I
    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->getVideoUrlLowCount(Ljava/lang/String;)I

    move-result v1

    .line 3447
    .local v1, "low_count":I
    add-int v3, v0, v1

    .line 3449
    .end local v0    # "high_count":I
    .end local v1    # "low_count":I
    .end local v2    # "urlss":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getVideoName(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 376
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 377
    .local v2, "status":Lcom/gemini/play/UrlStatus;
    iget v3, v2, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 378
    iget-object v1, v2, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 382
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v1

    .line 375
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getVideoNameForward(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/LIVEplayer;->getVideoNameForward(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoNameForward(IZ)Ljava/lang/String;
    .locals 7
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    .line 620
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 621
    const-string v2, ""

    .line 677
    :goto_0
    return-object v2

    .line 623
    :cond_0
    if-nez p1, :cond_4

    .line 624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 625
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v3

    .line 626
    .local v3, "status":Lcom/gemini/play/UrlStatus;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 627
    iget v5, v3, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v5, p0, :cond_2

    .line 628
    add-int/lit8 v1, v0, -0x1

    .line 629
    .local v1, "k":I
    if-gez v1, :cond_1

    .line 630
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    goto :goto_0

    .line 632
    :cond_1
    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 633
    .local v2, "name":Ljava/lang/String;
    goto :goto_0

    .line 624
    .end local v1    # "k":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 636
    .end local v3    # "status":Lcom/gemini/play/UrlStatus;
    :cond_3
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    goto :goto_0

    .line 656
    .end local v0    # "i":I
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v4, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 658
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v3

    .line 659
    .restart local v3    # "status":Lcom/gemini/play/UrlStatus;
    iget v5, v3, Lcom/gemini/play/UrlStatus;->id:I

    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 660
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 663
    .end local v3    # "status":Lcom/gemini/play/UrlStatus;
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_7

    .line 664
    const-string v2, ""

    goto/16 :goto_0

    .line 666
    :cond_7
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    .line 667
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gemini/play/UrlStatus;

    .line 668
    .restart local v3    # "status":Lcom/gemini/play/UrlStatus;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 669
    iget v5, v3, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v5, p0, :cond_9

    .line 670
    add-int/lit8 v1, v0, -0x1

    .line 671
    .restart local v1    # "k":I
    if-gez v1, :cond_8

    .line 672
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 673
    :cond_8
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 674
    .restart local v2    # "name":Ljava/lang/String;
    goto/16 :goto_0

    .line 666
    .end local v1    # "k":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 677
    .end local v3    # "status":Lcom/gemini/play/UrlStatus;
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getVideoNameNext(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/LIVEplayer;->getVideoNameNext(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoNameNext(IZ)Ljava/lang/String;
    .locals 8
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    const/4 v7, 0x0

    .line 484
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 485
    const-string v2, ""

    .line 524
    :goto_0
    return-object v2

    .line 487
    :cond_0
    if-nez p1, :cond_4

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 489
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v3

    .line 490
    .local v3, "status":Lcom/gemini/play/UrlStatus;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 491
    iget v5, v3, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v5, p0, :cond_2

    if-nez p1, :cond_2

    .line 492
    add-int/lit8 v1, v0, 0x1

    .line 493
    .local v1, "k":I
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 494
    invoke-static {v7}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    goto :goto_0

    .line 496
    :cond_1
    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 497
    .local v2, "name":Ljava/lang/String;
    goto :goto_0

    .line 488
    .end local v1    # "k":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 500
    .end local v3    # "status":Lcom/gemini/play/UrlStatus;
    :cond_3
    invoke-static {v7}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    goto :goto_0

    .line 502
    .end local v0    # "i":I
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v4, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v5, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 504
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v3

    .line 505
    .restart local v3    # "status":Lcom/gemini/play/UrlStatus;
    iget v5, v3, Lcom/gemini/play/UrlStatus;->id:I

    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 506
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 509
    .end local v3    # "status":Lcom/gemini/play/UrlStatus;
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_7

    .line 510
    const-string v2, ""

    goto/16 :goto_0

    .line 512
    :cond_7
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    .line 513
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gemini/play/UrlStatus;

    .line 514
    .restart local v3    # "status":Lcom/gemini/play/UrlStatus;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 515
    iget v5, v3, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v5, p0, :cond_9

    .line 516
    add-int/lit8 v1, v0, 0x1

    .line 517
    .restart local v1    # "k":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_8

    .line 518
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 520
    :cond_8
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 521
    .restart local v2    # "name":Ljava/lang/String;
    goto/16 :goto_0

    .line 512
    .end local v1    # "k":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 524
    .end local v3    # "status":Lcom/gemini/play/UrlStatus;
    :cond_a
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    iget-object v2, v5, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getVideoNoNeedpsNum()I
    .locals 4

    .prologue
    .line 841
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 842
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v1

    .line 843
    .local v1, "status":Lcom/gemini/play/UrlStatus;
    iget-object v2, v1, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 844
    iget v2, v1, Lcom/gemini/play/UrlStatus;->id:I

    .line 847
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return v2

    .line 841
    .restart local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static getVideoNum(I)I
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 851
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 852
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v1

    .line 853
    .local v1, "status":Lcom/gemini/play/UrlStatus;
    iget v2, v1, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v2, p0, :cond_0

    .line 857
    .end local v0    # "i":I
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return v0

    .line 851
    .restart local v0    # "i":I
    .restart local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getVideoNum(ILjava/lang/String;Z)I
    .locals 11
    .param p0, "id"    # I
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "checkps"    # Z

    .prologue
    const/4 v8, -0x1

    .line 949
    if-nez p2, :cond_5

    .line 950
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v7, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_2

    .line 952
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    .line 953
    .local v5, "status":Lcom/gemini/play/UrlStatus;
    iget-object v9, v5, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_0

    const-string v9, "1"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 954
    :cond_0
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    .end local v5    # "status":Lcom/gemini/play/UrlStatus;
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 958
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    .line 959
    .restart local v5    # "status":Lcom/gemini/play/UrlStatus;
    iget v9, v5, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v9, p0, :cond_3

    .line 999
    .end local v0    # "i":I
    .end local v5    # "status":Lcom/gemini/play/UrlStatus;
    :goto_2
    return v0

    .line 957
    .restart local v0    # "i":I
    .restart local v5    # "status":Lcom/gemini/play/UrlStatus;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v5    # "status":Lcom/gemini/play/UrlStatus;
    :cond_4
    move v0, v8

    .line 963
    goto :goto_2

    .line 965
    .end local v0    # "i":I
    .end local v7    # "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .restart local v7    # "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_7

    .line 967
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    .line 968
    .restart local v5    # "status":Lcom/gemini/play/UrlStatus;
    iget-object v9, v5, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_6

    .line 969
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 973
    .end local v5    # "status":Lcom/gemini/play/UrlStatus;
    :cond_7
    const/4 v4, 0x0

    .line 974
    .local v4, "needps_num":I
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_c

    .line 975
    const/4 v3, 0x0

    .line 977
    .local v3, "isneedps":Z
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gemini/play/UrlStatus;

    .line 978
    .restart local v5    # "status":Lcom/gemini/play/UrlStatus;
    iget-object v6, v5, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 979
    .local v6, "type_tmp":Ljava/lang/String;
    const-string v9, "\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "ids":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_5
    array-length v9, v1

    if-ge v2, v9, :cond_8

    .line 982
    aget-object v9, v1, v2

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 983
    const/4 v3, 0x1

    .line 984
    add-int/lit8 v4, v4, 0x1

    .line 989
    :cond_8
    iget v9, v5, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v9, p0, :cond_b

    .line 992
    if-nez v3, :cond_a

    iget-object v9, v5, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_a

    .line 993
    sub-int/2addr v0, v4

    goto :goto_2

    .line 981
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    move v0, v8

    .line 995
    goto :goto_2

    .line 974
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "ii":I
    .end local v3    # "isneedps":Z
    .end local v5    # "status":Lcom/gemini/play/UrlStatus;
    .end local v6    # "type_tmp":Ljava/lang/String;
    :cond_c
    move v0, v8

    .line 999
    goto :goto_2
.end method

.method public static getVideoNum(IZ)I
    .locals 10
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    .line 861
    if-nez p1, :cond_2

    .line 862
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 863
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    .line 864
    .local v5, "status":Lcom/gemini/play/UrlStatus;
    iget v7, v5, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v7, p0, :cond_0

    .line 944
    .end local v0    # "i":I
    .end local v5    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return v0

    .line 862
    .restart local v0    # "i":I
    .restart local v5    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v5    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    move v0, v6

    .line 868
    goto :goto_1

    .line 871
    .end local v0    # "i":I
    :cond_2
    const/4 v4, 0x0

    .line 872
    .local v4, "needps_num":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v7, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 873
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v5

    .line 875
    .restart local v5    # "status":Lcom/gemini/play/UrlStatus;
    if-nez v5, :cond_4

    .end local v5    # "status":Lcom/gemini/play/UrlStatus;
    :cond_3
    move v0, v6

    .line 944
    goto :goto_1

    .line 878
    .restart local v5    # "status":Lcom/gemini/play/UrlStatus;
    :cond_4
    const/4 v3, 0x0

    .line 879
    .local v3, "isneedps":Z
    iget-object v7, v5, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "ids":[Ljava/lang/String;
    array-length v7, v1

    if-gt v7, v9, :cond_6

    .line 881
    iget-object v7, v5, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    invoke-static {v7}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_5

    .line 882
    const/4 v3, 0x1

    .line 883
    add-int/lit8 v4, v4, 0x1

    .line 920
    :cond_5
    :goto_3
    if-nez v3, :cond_8

    .line 922
    iget v7, v5, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v7, p0, :cond_8

    .line 923
    sub-int/2addr v0, v4

    goto :goto_1

    .line 887
    :cond_6
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_4
    array-length v7, v1

    if-ge v2, v7, :cond_5

    .line 888
    aget-object v7, v1, v2

    invoke-static {v7}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_7

    .line 889
    const/4 v3, 0x1

    .line 890
    add-int/lit8 v4, v4, 0x1

    .line 891
    goto :goto_3

    .line 887
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 872
    .end local v2    # "ii":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p0, "password_tmpss"    # Ljava/lang/String;
    .param p1, "line"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 3402
    const-string v6, "geminihighlowgemini"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3403
    .local v4, "passwords":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3405
    .local v3, "password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v6, v4

    if-ge v6, v9, :cond_1

    .line 3406
    const-string v6, "getVideoUrlHighCount 1"

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3424
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, p1, :cond_4

    .line 3425
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3426
    .local v5, "u":[Ljava/lang/String;
    array-length v6, v5

    if-lt v6, v10, :cond_3

    .line 3427
    aget-object v6, v5, v9

    .line 3435
    :goto_0
    return-object v6

    .line 3409
    .end local v5    # "u":[Ljava/lang/String;
    :cond_1
    aget-object v6, v4, v11

    const-string v8, "\\|"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3410
    .local v0, "high_passwords":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVideoUrlHighCount "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3411
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 3412
    aget-object v6, v0, v1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3411
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3415
    :cond_2
    array-length v6, v4

    if-lt v6, v10, :cond_0

    .line 3416
    aget-object v6, v4, v9

    const-string v8, "\\|"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3417
    .local v2, "low_passwords":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVideoUrllowCount "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3418
    const/4 v1, 0x0

    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 3419
    aget-object v6, v2, v1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3418
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "high_passwords":[Ljava/lang/String;
    .end local v1    # "ii":I
    .end local v2    # "low_passwords":[Ljava/lang/String;
    .restart local v5    # "u":[Ljava/lang/String;
    :cond_3
    move-object v6, v7

    .line 3429
    goto :goto_0

    .line 3431
    .end local v5    # "u":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3432
    .restart local v5    # "u":[Ljava/lang/String;
    array-length v6, v5

    if-lt v6, v10, :cond_5

    .line 3433
    aget-object v6, v5, v9

    goto :goto_0

    :cond_5
    move-object v6, v7

    .line 3435
    goto :goto_0
.end method

.method public static getVideoPassword(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 784
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 785
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 786
    .local v2, "status":Lcom/gemini/play/UrlStatus;
    iget v3, v2, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 787
    iget-object v1, v2, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 791
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v1

    .line 784
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getVideoSource(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 795
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 796
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 797
    .local v2, "status":Lcom/gemini/play/UrlStatus;
    iget v3, v2, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 798
    iget-object v1, v2, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    .line 802
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v1

    .line 795
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getVideoStatusForward(IZ)Lcom/gemini/play/UrlStatus;
    .locals 11
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    .line 574
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_0

    .line 575
    const/4 v9, 0x0

    .line 614
    :goto_0
    return-object v9

    .line 577
    :cond_0
    if-nez p1, :cond_4

    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 579
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v6

    .line 580
    .local v6, "status":Lcom/gemini/play/UrlStatus;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status.id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 581
    iget v9, v6, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v9, p0, :cond_2

    .line 582
    add-int/lit8 v5, v0, -0x1

    .line 583
    .local v5, "k":I
    if-gez v5, :cond_1

    .line 584
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v9

    goto :goto_0

    .line 585
    :cond_1
    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v9

    goto :goto_0

    .line 578
    .end local v5    # "k":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 588
    .end local v6    # "status":Lcom/gemini/play/UrlStatus;
    :cond_3
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v9

    goto :goto_0

    .line 590
    .end local v0    # "i":I
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v8, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    const/4 v1, 0x0

    .line 592
    .local v1, "i_forward":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_9

    .line 593
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v6

    .line 595
    .restart local v6    # "status":Lcom/gemini/play/UrlStatus;
    iget-object v7, v6, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 596
    .local v7, "type":Ljava/lang/String;
    const-string v9, "\\|"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "ids":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 598
    .local v4, "isneedps":Z
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_3
    array-length v9, v2

    if-ge v3, v9, :cond_5

    .line 599
    aget-object v9, v2, v3

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 600
    const/4 v4, 0x1

    .line 605
    :cond_5
    if-nez v4, :cond_8

    .line 606
    iget v9, v6, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v9, p0, :cond_7

    .line 607
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gemini/play/UrlStatus;

    goto/16 :goto_0

    .line 598
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 609
    :cond_7
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    move v1, v0

    .line 592
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 614
    .end local v2    # "ids":[Ljava/lang/String;
    .end local v3    # "ii":I
    .end local v4    # "isneedps":Z
    .end local v6    # "status":Lcom/gemini/play/UrlStatus;
    .end local v7    # "type":Ljava/lang/String;
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gemini/play/UrlStatus;

    goto/16 :goto_0
.end method

.method public static getVideoStatusNext(IZ)Lcom/gemini/play/UrlStatus;
    .locals 13
    .param p0, "id"    # I
    .param p1, "checkps"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 406
    sget-object v10, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_1

    move-object v6, v9

    .line 454
    :cond_0
    :goto_0
    return-object v6

    .line 409
    :cond_1
    if-nez p1, :cond_5

    .line 410
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 411
    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v6

    .line 412
    .local v6, "status":Lcom/gemini/play/UrlStatus;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status.id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 413
    iget v9, v6, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v9, p0, :cond_3

    if-nez p1, :cond_3

    .line 414
    add-int/lit8 v5, v1, 0x1

    .line 415
    .local v5, "k":I
    sget-object v9, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v5, v9, :cond_2

    .line 416
    invoke-static {v11}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v6

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v6

    goto :goto_0

    .line 410
    .end local v5    # "k":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 421
    .end local v6    # "status":Lcom/gemini/play/UrlStatus;
    :cond_4
    invoke-static {v11}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v6

    goto :goto_0

    .line 423
    .end local v1    # "i":I
    :cond_5
    const/4 v0, 0x0

    .line 424
    .local v0, "checkok":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v8, "urlArrayPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v10, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_a

    .line 426
    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v6

    .line 427
    .restart local v6    # "status":Lcom/gemini/play/UrlStatus;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " status.id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 429
    iget-object v7, v6, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 430
    .local v7, "type":Ljava/lang/String;
    const-string v10, "\\|"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "ids":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 432
    .local v4, "isneedps":Z
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_3
    array-length v10, v2

    if-ge v3, v10, :cond_6

    .line 433
    aget-object v10, v2, v3

    invoke-static {v10}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_9

    .line 434
    const/4 v4, 0x1

    .line 439
    :cond_6
    if-nez v4, :cond_8

    .line 440
    if-eq v0, v12, :cond_0

    .line 444
    iget v10, v6, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v10, p0, :cond_7

    .line 445
    const/4 v0, 0x1

    .line 447
    :cond_7
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 432
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 451
    .end local v2    # "ids":[Ljava/lang/String;
    .end local v3    # "ii":I
    .end local v4    # "isneedps":Z
    .end local v6    # "status":Lcom/gemini/play/UrlStatus;
    .end local v7    # "type":Ljava/lang/String;
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_b

    move-object v6, v9

    .line 452
    goto/16 :goto_0

    .line 454
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gemini/play/UrlStatus;

    move-object v6, v9

    goto/16 :goto_0
.end method

.method public static getVideoType(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 806
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 807
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v1

    .line 808
    .local v1, "status":Lcom/gemini/play/UrlStatus;
    iget v3, v1, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 809
    iget-object v2, v1, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 813
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v2

    .line 806
    .restart local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getVideoUrl(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 365
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v1

    .line 366
    .local v1, "status":Lcom/gemini/play/UrlStatus;
    iget v3, v1, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 367
    iget-object v2, v1, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 371
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v2

    .line 364
    .restart local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p0, "urlss"    # Ljava/lang/String;
    .param p1, "line"    # I

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3333
    const-string v6, "geminihighlowgemini"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3334
    .local v5, "urls":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3336
    .local v4, "url":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v6, v5

    if-ge v6, v9, :cond_1

    .line 3337
    const-string v6, "getVideoUrlHighCount 1"

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3357
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoUrl "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3359
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, p1, :cond_6

    if-ltz p1, :cond_6

    .line 3360
    sput p1, Lcom/gemini/play/LIVEplayer;->currentLine:I

    .line 3362
    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3363
    .local v3, "u":[Ljava/lang/String;
    array-length v6, v3

    if-lt v6, v10, :cond_5

    .line 3364
    aget-object v6, v3, v9

    .line 3398
    .end local v3    # "u":[Ljava/lang/String;
    :goto_0
    return-object v6

    .line 3340
    :cond_1
    aget-object v6, v5, v8

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3341
    .local v0, "high_urls":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoUrlHighCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3342
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 3343
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_2

    .line 3344
    aget-object v6, v0, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3342
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3347
    :cond_3
    array-length v6, v5

    if-lt v6, v10, :cond_0

    .line 3348
    aget-object v6, v5, v9

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3349
    .local v2, "low_urls":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoUrllowCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3350
    const/4 v1, 0x0

    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 3351
    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_4

    .line 3352
    aget-object v6, v2, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3350
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3366
    .end local v0    # "high_urls":[Ljava/lang/String;
    .end local v1    # "ii":I
    .end local v2    # "low_urls":[Ljava/lang/String;
    .restart local v3    # "u":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 3380
    .end local v3    # "u":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    if-gez p1, :cond_8

    .line 3381
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    .line 3383
    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3384
    .restart local v3    # "u":[Ljava/lang/String;
    array-length v6, v3

    if-lt v6, v10, :cond_7

    .line 3385
    aget-object v6, v3, v9

    goto/16 :goto_0

    .line 3387
    :cond_7
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 3389
    .end local v3    # "u":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v6, p1, :cond_a

    .line 3390
    sput v8, Lcom/gemini/play/LIVEplayer;->currentLine:I

    .line 3392
    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3393
    .restart local v3    # "u":[Ljava/lang/String;
    array-length v6, v3

    if-lt v6, v10, :cond_9

    .line 3394
    aget-object v6, v3, v9

    goto/16 :goto_0

    .line 3396
    :cond_9
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 3398
    .end local v3    # "u":[Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public static getVideoUrlHighCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "urlss"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 3308
    const-string v3, "geminihighlowgemini"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3310
    .local v1, "urls":[Ljava/lang/String;
    array-length v3, v1

    if-ge v3, v2, :cond_0

    .line 3311
    const-string v3, "getVideoUrlHighCount 1"

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3316
    :goto_0
    return v2

    .line 3314
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3315
    .local v0, "high_urls":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoUrlHighCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3316
    array-length v2, v0

    goto :goto_0
.end method

.method public static getVideoUrlLowCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "urlss"    # Ljava/lang/String;

    .prologue
    .line 3321
    const-string v2, "geminihighlowgemini"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3323
    .local v1, "urls":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 3324
    const/4 v2, 0x0

    .line 3328
    :goto_0
    return v2

    .line 3326
    :cond_0
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3327
    .local v0, "low_urls":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoUrlLowCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3328
    array-length v2, v0

    goto :goto_0
.end method

.method public static getVideoWaterMark(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 772
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 773
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v1

    .line 774
    .local v1, "status":Lcom/gemini/play/UrlStatus;
    iget v3, v1, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v3, p0, :cond_0

    .line 775
    iget-object v2, v1, Lcom/gemini/play/UrlStatus;->watermark:Ljava/lang/String;

    .line 780
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :goto_1
    return-object v2

    .line 772
    .restart local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static get_next_line(Ljava/lang/String;I)I
    .locals 4
    .param p0, "currentID"    # Ljava/lang/String;
    .param p1, "currentLine"    # I

    .prologue
    .line 3688
    sget v2, Lcom/gemini/play/MGplayer;->liveplaytimeout:I

    if-gtz v2, :cond_0

    .line 3699
    .end local p1    # "currentLine":I
    :goto_0
    return p1

    .line 3691
    .restart local p1    # "currentLine":I
    :cond_0
    invoke-static {p0}, Lcom/gemini/play/LIVEplayer;->getVideoLineCount(Ljava/lang/String;)I

    move-result v0

    .line 3693
    .local v0, "count":I
    move v1, p1

    .line 3694
    .local v1, "line":I
    add-int/lit8 v1, v1, 0x1

    .line 3695
    if-lt v1, v0, :cond_1

    .line 3696
    const/4 v1, 0x0

    .line 3698
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live get_next_line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    move p1, v1

    .line 3699
    goto :goto_0
.end method

.method public static idGet(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 321
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iget v0, v0, Lcom/gemini/play/UrlStatus;->id:I

    return v0
.end method

.method public static imageGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/LIVEplayer;->imageGet(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static imageGet(IZ)Ljava/lang/String;
    .locals 4
    .param p0, "index"    # I
    .param p1, "ishttp"    # Z

    .prologue
    .line 294
    sget-object v3, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gemini/play/UrlStatus;

    iget-object v1, v3, Lcom/gemini/play/UrlStatus;->image:Ljava/lang/String;

    .line 296
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    const-string v3, "png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    :cond_0
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "paths":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 301
    .end local v2    # "paths":[Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static imagebitGet(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 309
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iget-object v0, v0, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static imagebitSet(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 313
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iput-object p1, v0, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 314
    return-void
.end method

.method public static introductionGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 333
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iget-object v0, v0, Lcom/gemini/play/UrlStatus;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public static introductionSet(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I
    .param p1, "preview"    # Ljava/lang/String;

    .prologue
    .line 337
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iput-object p1, v0, Lcom/gemini/play/UrlStatus;->introduction:Ljava/lang/String;

    return-object p1
.end method

.method public static introidGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 349
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iget-object v0, v0, Lcom/gemini/play/UrlStatus;->introid:Ljava/lang/String;

    return-object v0
.end method

.method public static isBackplayUrl(Ljava/lang/String;)Z
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3646
    if-nez p0, :cond_1

    .line 3673
    :cond_0
    :goto_0
    return v3

    .line 3648
    :cond_1
    if-eqz p0, :cond_2

    const-string v5, "gemini://"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "gp2p://"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3651
    :cond_2
    const-string v5, "gemini://"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "gp2p://"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3652
    :cond_3
    const-string v5, "\\?"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3653
    .local v0, "v1":[Ljava/lang/String;
    array-length v5, v0

    if-lt v5, v7, :cond_0

    .line 3654
    aget-object v5, v0, v4

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3655
    .local v1, "v2":[Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v7, :cond_0

    .line 3656
    aget-object v5, v1, v3

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3657
    .local v2, "v3":[Ljava/lang/String;
    array-length v5, v2

    if-lt v5, v7, :cond_0

    .line 3658
    aget-object v5, v2, v4

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    move v3, v4

    .line 3659
    goto :goto_0
.end method

.method public static isPlaying()Z
    .locals 2

    .prologue
    .line 3632
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    if-eqz v0, :cond_0

    .line 3633
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v0

    .line 3641
    :goto_0
    return v0

    .line 3634
    :cond_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v0, :cond_1

    .line 3635
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0}, Lcom/gemini/play/ExoPlayerView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 3636
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_2

    .line 3637
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 3638
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_3

    .line 3639
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 3641
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseHlsPlugin(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2728
    if-nez p0, :cond_1

    .line 2796
    :cond_0
    :goto_0
    return v1

    .line 2731
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v0

    .line 2733
    .local v0, "cpuinfo":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUseHlsPlugin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/gemini/play/LIVEplayer;->enablelsplugin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CPU:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2735
    const-string v3, "rtsp://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2737
    const-string v3, "p2p://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "forcetv://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2739
    const-string v3, "gemini://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "gp2p://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 2740
    goto :goto_0

    .line 2743
    :cond_3
    sget v3, Lcom/gemini/play/LIVEplayer;->enablelsplugin:I

    if-eqz v3, :cond_0

    .line 2746
    sget v3, Lcom/gemini/play/LIVEplayer;->enablelsplugin:I

    if-ne v3, v2, :cond_c

    .line 2747
    if-eqz v0, :cond_5

    const-string v3, "S805"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2748
    const-string v3, "rtmp://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2750
    const-string v3, "udp://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2752
    const-string v3, "http://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, ":1935"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "playlist.m3u8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 2753
    goto/16 :goto_0

    .line 2754
    :cond_4
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "playlist.m3u8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 2758
    :cond_5
    if-eqz v0, :cond_7

    const-string v3, "RK3128"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2759
    const-string v2, "rtmp://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2761
    const-string v2, "udp://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2763
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ":1935"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "playlist.m3u8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2765
    :cond_6
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "playlist.m3u8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 2770
    :cond_7
    if-eqz v0, :cond_b

    const-string v3, "HIK3V2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2771
    const-string v3, "rtmp://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2773
    const-string v3, "udp://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2775
    const-string v3, "http://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, ":1935"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "playlist.m3u8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2777
    :cond_8
    const-string v3, "http://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "playlist.m3u8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2779
    :cond_9
    const-string v3, "http://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, ":1935"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "playlist.m3u8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_a
    move v1, v2

    .line 2782
    goto/16 :goto_0

    .line 2784
    :cond_b
    sget-boolean v3, Lcom/gemini/play/LIVEplayer;->SoftOrHard:Z

    if-eq v3, v2, :cond_0

    .line 2787
    const-string v3, "http://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 2790
    goto/16 :goto_0

    .line 2792
    :cond_c
    sget v3, Lcom/gemini/play/LIVEplayer;->enablelsplugin:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 2793
    goto/16 :goto_0
.end method

.method public static isVideoTypePs(I)Z
    .locals 8
    .param p0, "id"    # I

    .prologue
    .line 817
    const/4 v5, 0x0

    .line 818
    .local v5, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v6, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 819
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v4

    .line 820
    .local v4, "status":Lcom/gemini/play/UrlStatus;
    iget v6, v4, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v6, p0, :cond_0

    .line 821
    iget-object v5, v4, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 818
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    .end local v4    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    if-nez v5, :cond_3

    .line 826
    const/4 v3, 0x0

    .line 837
    :cond_2
    :goto_1
    return v3

    .line 828
    :cond_3
    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "ids":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 830
    .local v3, "isneedps":Z
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 831
    aget-object v6, v1, v2

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 832
    const/4 v3, 0x1

    .line 833
    goto :goto_1

    .line 830
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static nameGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 317
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iget-object v0, v0, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static passwordGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 341
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iget-object v0, v0, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    return-object v0
.end method

.method public static playCollectVideoForHard(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "videoViewH"    # Lcom/gemini/play/VideoView;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "seek"    # I
    .param p5, "nurl"    # Ljava/lang/String;
    .param p6, "npassword"    # Ljava/lang/String;

    .prologue
    .line 2203
    const/4 v4, 0x0

    .line 2204
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2205
    .local v5, "password":Ljava/lang/String;
    if-nez p5, :cond_3

    if-nez p6, :cond_3

    .line 2206
    new-instance v6, Lcom/gemini/play/MyLiveCollectView;

    invoke-direct {v6}, Lcom/gemini/play/MyLiveCollectView;-><init>()V

    .line 2207
    .local v6, "collecter":Lcom/gemini/play/MyLiveCollectView;
    invoke-virtual {v6, p0, p2}, Lcom/gemini/play/MyLiveCollectView;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/gemini/play/UrlStatus;

    move-result-object v8

    .line 2208
    .local v8, "s":Lcom/gemini/play/UrlStatus;
    if-nez v8, :cond_1

    .line 2301
    .end local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .end local v8    # "s":Lcom/gemini/play/UrlStatus;
    :cond_0
    :goto_0
    return-void

    .line 2211
    .restart local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .restart local v8    # "s":Lcom/gemini/play/UrlStatus;
    :cond_1
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2212
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 2213
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 2216
    :cond_2
    iget-object v4, v8, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 2217
    iget-object v5, v8, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 2218
    if-eqz v4, :cond_0

    .line 2221
    const/4 v9, 0x0

    .line 2222
    .local v9, "urlss":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2223
    .local v7, "passwordss":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanxing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2224
    sget-object v0, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2225
    sget-object v5, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 2235
    .end local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .end local v7    # "passwordss":Ljava/lang/String;
    .end local v8    # "s":Lcom/gemini/play/UrlStatus;
    .end local v9    # "urlss":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collect url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " password:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 2236
    invoke-static/range {v0 .. v5}, Lcom/gemini/play/LIVEplayer;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2227
    .restart local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .restart local v7    # "passwordss":Ljava/lang/String;
    .restart local v8    # "s":Lcom/gemini/play/UrlStatus;
    .restart local v9    # "urlss":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2228
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2230
    invoke-static {v9, p3}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2231
    sget v0, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v7, v0}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static playCollectVideoForHard2(Landroid/content/Context;Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "videoViewH"    # Lcom/gemini/play/ExoPlayerView;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "seek"    # I
    .param p5, "nurl"    # Ljava/lang/String;
    .param p6, "npassword"    # Ljava/lang/String;

    .prologue
    .line 2305
    const/4 v4, 0x0

    .line 2306
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2307
    .local v5, "password":Ljava/lang/String;
    if-nez p5, :cond_3

    if-nez p6, :cond_3

    .line 2308
    new-instance v6, Lcom/gemini/play/MyLiveCollectView;

    invoke-direct {v6}, Lcom/gemini/play/MyLiveCollectView;-><init>()V

    .line 2309
    .local v6, "collecter":Lcom/gemini/play/MyLiveCollectView;
    invoke-virtual {v6, p0, p2}, Lcom/gemini/play/MyLiveCollectView;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/gemini/play/UrlStatus;

    move-result-object v8

    .line 2310
    .local v8, "s":Lcom/gemini/play/UrlStatus;
    if-nez v8, :cond_1

    .line 2434
    .end local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .end local v8    # "s":Lcom/gemini/play/UrlStatus;
    :cond_0
    :goto_0
    return-void

    .line 2313
    .restart local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .restart local v8    # "s":Lcom/gemini/play/UrlStatus;
    :cond_1
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2314
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 2315
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 2318
    :cond_2
    iget-object v4, v8, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 2319
    iget-object v5, v8, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 2320
    if-eqz v4, :cond_0

    .line 2323
    const/4 v9, 0x0

    .line 2324
    .local v9, "urlss":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2325
    .local v7, "passwordss":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanxing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2326
    sget-object v0, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2327
    sget-object v5, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .end local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .end local v7    # "passwordss":Ljava/lang/String;
    .end local v8    # "s":Lcom/gemini/play/UrlStatus;
    .end local v9    # "urlss":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 2337
    invoke-static/range {v0 .. v5}, Lcom/gemini/play/LIVEplayer;->playVideoForHard2(Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2329
    .restart local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .restart local v7    # "passwordss":Ljava/lang/String;
    .restart local v8    # "s":Lcom/gemini/play/UrlStatus;
    .restart local v9    # "urlss":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2330
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2332
    invoke-static {v9, p3}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2333
    sget v0, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v7, v0}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static playCollectVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "seek"    # I
    .param p5, "nurl"    # Ljava/lang/String;
    .param p6, "npassword"    # Ljava/lang/String;

    .prologue
    .line 2574
    const/4 v4, 0x0

    .line 2575
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2576
    .local v5, "password":Ljava/lang/String;
    if-nez p5, :cond_3

    if-nez p6, :cond_3

    .line 2577
    new-instance v6, Lcom/gemini/play/MyLiveCollectView;

    invoke-direct {v6}, Lcom/gemini/play/MyLiveCollectView;-><init>()V

    .line 2578
    .local v6, "collecter":Lcom/gemini/play/MyLiveCollectView;
    invoke-virtual {v6, p0, p2}, Lcom/gemini/play/MyLiveCollectView;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/gemini/play/UrlStatus;

    move-result-object v8

    .line 2579
    .local v8, "s":Lcom/gemini/play/UrlStatus;
    if-nez v8, :cond_1

    .line 2705
    .end local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .end local v8    # "s":Lcom/gemini/play/UrlStatus;
    :cond_0
    :goto_0
    return-void

    .line 2582
    .restart local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .restart local v8    # "s":Lcom/gemini/play/UrlStatus;
    :cond_1
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2583
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 2584
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 2587
    :cond_2
    iget-object v4, v8, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 2588
    iget-object v5, v8, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 2589
    if-eqz v4, :cond_0

    .line 2592
    const/4 v9, 0x0

    .line 2593
    .local v9, "urlss":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2594
    .local v7, "passwordss":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanxing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2595
    sget-object v0, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2596
    sget-object v5, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .end local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .end local v7    # "passwordss":Ljava/lang/String;
    .end local v8    # "s":Lcom/gemini/play/UrlStatus;
    .end local v9    # "urlss":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 2606
    invoke-static/range {v0 .. v5}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2598
    .restart local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .restart local v7    # "passwordss":Ljava/lang/String;
    .restart local v8    # "s":Lcom/gemini/play/UrlStatus;
    .restart local v9    # "urlss":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2599
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2601
    invoke-static {v9, p3}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2602
    sget v0, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v7, v0}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static playCollectVideoForSoft2(Landroid/content/Context;Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "mVideoView"    # Lio/vov/vitamio/widget/VideoView;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "seek"    # I
    .param p5, "nurl"    # Ljava/lang/String;
    .param p6, "npassword"    # Ljava/lang/String;

    .prologue
    .line 2438
    const/4 v4, 0x0

    .line 2439
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2440
    .local v5, "password":Ljava/lang/String;
    if-nez p5, :cond_3

    if-nez p6, :cond_3

    .line 2441
    new-instance v6, Lcom/gemini/play/MyLiveCollectView;

    invoke-direct {v6}, Lcom/gemini/play/MyLiveCollectView;-><init>()V

    .line 2442
    .local v6, "collecter":Lcom/gemini/play/MyLiveCollectView;
    invoke-virtual {v6, p0, p2}, Lcom/gemini/play/MyLiveCollectView;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/gemini/play/UrlStatus;

    move-result-object v8

    .line 2443
    .local v8, "s":Lcom/gemini/play/UrlStatus;
    if-nez v8, :cond_1

    .line 2571
    .end local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .end local v8    # "s":Lcom/gemini/play/UrlStatus;
    :cond_0
    :goto_0
    return-void

    .line 2446
    .restart local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .restart local v8    # "s":Lcom/gemini/play/UrlStatus;
    :cond_1
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2447
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 2448
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 2451
    :cond_2
    iget-object v4, v8, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 2452
    iget-object v5, v8, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 2453
    if-eqz v4, :cond_0

    .line 2456
    const/4 v9, 0x0

    .line 2457
    .local v9, "urlss":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2458
    .local v7, "passwordss":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanxing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2459
    sget-object v0, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2460
    sget-object v5, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .end local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .end local v7    # "passwordss":Ljava/lang/String;
    .end local v8    # "s":Lcom/gemini/play/UrlStatus;
    .end local v9    # "urlss":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 2470
    invoke-static/range {v0 .. v5}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2462
    .restart local v6    # "collecter":Lcom/gemini/play/MyLiveCollectView;
    .restart local v7    # "passwordss":Ljava/lang/String;
    .restart local v8    # "s":Lcom/gemini/play/UrlStatus;
    .restart local v9    # "urlss":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2463
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2465
    invoke-static {v9, p3}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2466
    sget v0, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v7, v0}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "videoViewH"    # Lcom/gemini/play/VideoView;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "seek"    # I
    .param p4, "nurl"    # Ljava/lang/String;
    .param p5, "npassword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1490
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->stopStatus()V

    .line 1494
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->pause()V

    .line 1495
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->reset()V

    .line 1497
    invoke-static {}, Lcom/gemini/play/Ghttp;->stop()V

    .line 1499
    sget-object v6, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    if-ne v6, v7, :cond_0

    .line 1500
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1501
    invoke-static {v7}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 1504
    :cond_0
    move-object v4, p4

    .line 1505
    .local v4, "url":Ljava/lang/String;
    move-object v1, p5

    .line 1507
    .local v1, "password":Ljava/lang/String;
    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 1508
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v4

    .line 1510
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->getVideoPassword(I)Ljava/lang/String;

    move-result-object v1

    .line 1512
    if-nez v4, :cond_2

    .line 1513
    const-string v6, "playVideoForHard null"

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1635
    :cond_1
    :goto_0
    return-void

    .line 1517
    :cond_2
    const/4 v5, 0x0

    .line 1518
    .local v5, "urlss":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1520
    .local v2, "passwordss":Ljava/lang/String;
    const-string v6, "://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1521
    const/4 v1, 0x0

    .line 1544
    .end local v2    # "passwordss":Ljava/lang/String;
    .end local v5    # "urlss":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video play:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " password:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1546
    if-eqz v4, :cond_1

    .line 1549
    new-instance v3, Lcom/gemini/play/LIVEplayer$6;

    invoke-direct {v3, p0}, Lcom/gemini/play/LIVEplayer$6;-><init>(Lcom/gemini/play/VideoView;)V

    .line 1568
    .local v3, "playHandler":Landroid/os/Handler;
    new-instance v0, Lcom/gemini/play/LIVEplayer$7;

    invoke-direct {v0, v3, p1, p0}, Lcom/gemini/play/LIVEplayer$7;-><init>(Landroid/os/Handler;Ljava/lang/String;Lcom/gemini/play/VideoView;)V

    .line 1634
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-static {v4, v1, p1, v0, p3}, Lcom/gemini/play/LIVEplayer;->playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V

    goto :goto_0

    .line 1522
    .end local v0    # "pHandler":Landroid/os/Handler;
    .end local v3    # "playHandler":Landroid/os/Handler;
    .restart local v2    # "passwordss":Ljava/lang/String;
    .restart local v5    # "urlss":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "quanxing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1523
    sget-object v6, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1524
    sget-object v1, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 1526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video play:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " password:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_1

    .line 1530
    :cond_5
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1531
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1533
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " psss="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1535
    invoke-static {v5, p2}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1536
    invoke-static {v2, p2}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static playVideoForHard2(Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "videoViewH"    # Lcom/gemini/play/ExoPlayerView;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "seek"    # I
    .param p4, "nurl"    # Ljava/lang/String;
    .param p5, "npassword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1638
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->stopStatus()V

    .line 1640
    invoke-virtual {p0}, Lcom/gemini/play/ExoPlayerView;->pause()V

    .line 1641
    invoke-virtual {p0}, Lcom/gemini/play/ExoPlayerView;->release()V

    .line 1643
    invoke-static {}, Lcom/gemini/play/Ghttp;->stop()V

    .line 1645
    sget-object v6, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    if-ne v6, v7, :cond_0

    .line 1646
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1647
    invoke-static {v7}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 1650
    :cond_0
    move-object v4, p4

    .line 1651
    .local v4, "url":Ljava/lang/String;
    move-object v1, p5

    .line 1653
    .local v1, "password":Ljava/lang/String;
    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 1654
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v4

    .line 1656
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->getVideoPassword(I)Ljava/lang/String;

    move-result-object v1

    .line 1658
    if-nez v4, :cond_2

    .line 1659
    const-string v6, "playVideoForHard null"

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1750
    :cond_1
    :goto_0
    return-void

    .line 1663
    :cond_2
    const/4 v5, 0x0

    .line 1664
    .local v5, "urlss":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1665
    .local v2, "passwordss":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "quanxing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1666
    sget-object v6, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1667
    sget-object v1, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 1669
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video play:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " password:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1687
    .end local v2    # "passwordss":Ljava/lang/String;
    .end local v5    # "urlss":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v4, :cond_1

    .line 1690
    new-instance v3, Lcom/gemini/play/LIVEplayer$8;

    invoke-direct {v3, p0}, Lcom/gemini/play/LIVEplayer$8;-><init>(Lcom/gemini/play/ExoPlayerView;)V

    .line 1706
    .local v3, "playHandler":Landroid/os/Handler;
    new-instance v0, Lcom/gemini/play/LIVEplayer$9;

    invoke-direct {v0, v3, p1, p0}, Lcom/gemini/play/LIVEplayer$9;-><init>(Landroid/os/Handler;Ljava/lang/String;Lcom/gemini/play/ExoPlayerView;)V

    .line 1749
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-static {v4, v1, p1, v0, p3}, Lcom/gemini/play/LIVEplayer;->playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V

    goto :goto_0

    .line 1673
    .end local v0    # "pHandler":Landroid/os/Handler;
    .end local v3    # "playHandler":Landroid/os/Handler;
    .restart local v2    # "passwordss":Ljava/lang/String;
    .restart local v5    # "urlss":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1674
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " psss="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1678
    invoke-static {v5, p2}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1679
    invoke-static {v2, p2}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1681
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "seek"    # I
    .param p4, "nurl"    # Ljava/lang/String;
    .param p5, "npassword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1341
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 1347
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->stopStatus()V

    .line 1353
    invoke-static {}, Lcom/gemini/play/Ghttp;->stop()V

    .line 1355
    sget-object v6, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    if-ne v6, v7, :cond_0

    .line 1356
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1357
    invoke-static {v7}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 1360
    :cond_0
    move-object v4, p4

    .line 1361
    .local v4, "url":Ljava/lang/String;
    move-object v1, p5

    .line 1363
    .local v1, "password":Ljava/lang/String;
    if-nez v4, :cond_2

    if-nez v1, :cond_2

    .line 1364
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v4

    .line 1366
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->getVideoPassword(I)Ljava/lang/String;

    move-result-object v1

    .line 1368
    if-nez v4, :cond_1

    .line 1369
    const-string v6, "playVideoForHard null"

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1484
    :goto_0
    return-void

    .line 1373
    :cond_1
    const/4 v5, 0x0

    .line 1374
    .local v5, "urlss":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1375
    .local v2, "passwordss":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "quanxing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1376
    sget-object v6, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1377
    sget-object v1, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 1379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video play:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " password:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1397
    .end local v2    # "passwordss":Ljava/lang/String;
    .end local v5    # "urlss":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v3, Lcom/gemini/play/LIVEplayer$4;

    invoke-direct {v3, p0}, Lcom/gemini/play/LIVEplayer$4;-><init>(Lorg/videolan/vlc/VlcVideoView;)V

    .line 1418
    .local v3, "playHandler":Landroid/os/Handler;
    new-instance v0, Lcom/gemini/play/LIVEplayer$5;

    invoke-direct {v0, v3, p1, p0}, Lcom/gemini/play/LIVEplayer$5;-><init>(Landroid/os/Handler;Ljava/lang/String;Lorg/videolan/vlc/VlcVideoView;)V

    .line 1483
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-static {v4, v1, p1, v0, p3}, Lcom/gemini/play/LIVEplayer;->playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V

    goto :goto_0

    .line 1383
    .end local v0    # "pHandler":Landroid/os/Handler;
    .end local v3    # "playHandler":Landroid/os/Handler;
    .restart local v2    # "passwordss":Ljava/lang/String;
    .restart local v5    # "urlss":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1384
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " psss="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1388
    invoke-static {v5, p2}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1389
    invoke-static {v2, p2}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static playVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "mVideoView"    # Lio/vov/vitamio/widget/VideoView;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "seek"    # I
    .param p4, "nurl"    # Ljava/lang/String;
    .param p5, "npassword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1230
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->pause()V

    .line 1233
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->stopStatus()V

    .line 1234
    invoke-static {}, Lcom/gemini/play/Ghttp;->stop()V

    .line 1236
    sget-object v6, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    if-ne v6, v7, :cond_0

    .line 1237
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1238
    invoke-static {v7}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 1241
    :cond_0
    move-object v4, p4

    .line 1242
    .local v4, "url":Ljava/lang/String;
    move-object v1, p5

    .line 1244
    .local v1, "password":Ljava/lang/String;
    if-nez v4, :cond_2

    if-nez v1, :cond_2

    .line 1245
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v4

    .line 1246
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->getVideoPassword(I)Ljava/lang/String;

    move-result-object v1

    .line 1247
    if-nez v4, :cond_1

    .line 1337
    :goto_0
    return-void

    .line 1250
    :cond_1
    const/4 v5, 0x0

    .line 1251
    .local v5, "urlss":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1252
    .local v2, "passwordss":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "quanxing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video play:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " password:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1255
    sget-object v6, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1256
    sget-object v1, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 1265
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video play:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " password:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1268
    .end local v2    # "passwordss":Ljava/lang/String;
    .end local v5    # "urlss":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/gemini/play/LIVEplayer$2;

    invoke-direct {v3, p0}, Lcom/gemini/play/LIVEplayer$2;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    .line 1292
    .local v3, "playHandler":Landroid/os/Handler;
    new-instance v0, Lcom/gemini/play/LIVEplayer$3;

    invoke-direct {v0, v3, p1, p0}, Lcom/gemini/play/LIVEplayer$3;-><init>(Landroid/os/Handler;Ljava/lang/String;Lio/vov/vitamio/widget/VideoView;)V

    .line 1336
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-static {v4, v1, p1, v0, p3}, Lcom/gemini/play/LIVEplayer;->playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V

    goto :goto_0

    .line 1258
    .end local v0    # "pHandler":Landroid/os/Handler;
    .end local v3    # "playHandler":Landroid/os/Handler;
    .restart local v2    # "passwordss":Ljava/lang/String;
    .restart local v5    # "urlss":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1259
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1261
    invoke-static {v5, p2}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1262
    invoke-static {v2, p2}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "urlid"    # Ljava/lang/String;
    .param p3, "pHandler"    # Landroid/os/Handler;
    .param p4, "seek"    # I

    .prologue
    .line 1753
    invoke-static {}, Lcom/gemini/custom/chuangshi;->chuangshi_send2()V

    .line 1754
    invoke-static {}, Lcom/gemini/custom/lookiptv;->lookiptv_send()V

    .line 1756
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/LIVEplayer;->player_isexit:Z

    .line 1757
    const/4 v0, 0x0

    sput v0, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 1758
    const/4 v0, 0x0

    sput v0, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 1759
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 1761
    const/4 v9, 0x1

    .line 1762
    .local v9, "p2p_needrestart_tmp":I
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v1, "p2p://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v1, "forcetv://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const-string v0, "p2p://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "forcetv://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1763
    :cond_1
    const/4 v9, 0x0

    .line 1775
    :cond_2
    :goto_0
    sget-object v0, Lcom/gemini/play/LIVEplayer;->geminipassword9_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 1776
    sget-object v0, Lcom/gemini/play/LIVEplayer;->geminipassword9_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1777
    const/4 v0, 0x0

    sput-object v0, Lcom/gemini/play/LIVEplayer;->geminipassword9_thread:Ljava/lang/Thread;

    .line 1780
    :cond_3
    move v8, v9

    .line 1782
    .local v8, "p2p_needrestart":I
    sput-object p0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    .line 1783
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    .line 1785
    const-string v0, "vjms://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1786
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/LIVEplayer$10;

    invoke-direct {v1, p0, p3}, Lcom/gemini/play/LIVEplayer$10;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1794
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2199
    :cond_4
    :goto_1
    return-void

    .line 1764
    .end local v8    # "p2p_needrestart":I
    :cond_5
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v1, "p2p://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v1, "forcetv://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "p2p://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "forcetv://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1765
    invoke-static {}, Lcom/gemini/play/MGplayer;->s5()V

    goto :goto_0

    .line 1766
    :cond_7
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v1, "tvbus://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1767
    sget v0, Lcom/gemini/play/MGplayer;->start_tvbus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1768
    sget-object v0, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    invoke-virtual {v0}, Lcom/tvbus/engine/TvbusApi;->stopChannel()V

    goto :goto_0

    .line 1770
    :cond_8
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v1, "vjms://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1771
    sget-boolean v0, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1772
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    invoke-virtual {v0}, Lcom/nagasoft/player/VJPlayer;->stop()V

    goto/16 :goto_0

    .line 1795
    .restart local v8    # "p2p_needrestart":I
    :cond_9
    const-string v0, "tvbus://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1796
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/LIVEplayer$11;

    invoke-direct {v1, p0, p3}, Lcom/gemini/play/LIVEplayer$11;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1805
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 1806
    :cond_a
    const-string v0, "p2p://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "forcetv://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1807
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p2p_needrestart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1808
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/LIVEplayer$12;

    invoke-direct {v1, p0, p1, v8, p3}, Lcom/gemini/play/LIVEplayer$12;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1868
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1869
    :cond_c
    if-eqz p0, :cond_d

    const-string v0, "ghttp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1870
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/LIVEplayer$13;

    invoke-direct {v1, p0, p3}, Lcom/gemini/play/LIVEplayer$13;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1883
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1884
    :cond_d
    if-eqz p0, :cond_e

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const-string v0, "homepassword"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1886
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/LIVEplayer$14;

    invoke-direct {v1, p0, p1, p3}, Lcom/gemini/play/LIVEplayer$14;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1922
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1923
    :cond_e
    if-eqz p0, :cond_f

    const-string v0, "rtmp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    const-string v0, "geminipassword"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1924
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/LIVEplayer$15;

    invoke-direct {v1, p0, p3}, Lcom/gemini/play/LIVEplayer$15;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1939
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1941
    :cond_f
    invoke-static {p0}, Lcom/gemini/play/LIVEplayer;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p1, :cond_10

    if-eqz p1, :cond_1b

    const-string v0, "geminipassword2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "geminipassword3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1942
    :cond_10
    move-object v7, p0

    .line 1943
    .local v7, "key_url2":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huidixing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "woini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    if-eqz p1, :cond_14

    if-eqz p0, :cond_14

    const-string v0, "geminipassword"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, ".m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1944
    const-string v0, "gjinghaog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1946
    .local v10, "passwords":[Ljava/lang/String;
    array-length v0, v10

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    .line 1947
    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-static {p0, v0}, Lcom/gemini/custom/ihdtv;->setPlaylist_url_pw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/gemini/custom/ihdtv;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/playlist.m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1969
    .end local v10    # "passwords":[Ljava/lang/String;
    :cond_12
    :goto_2
    move-object v6, v7

    .line 1970
    .local v6, "key_url":Ljava/lang/String;
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/LIVEplayer$16;

    invoke-direct {v1, v6, p3}, Lcom/gemini/play/LIVEplayer$16;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1981
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1950
    .end local v6    # "key_url":Ljava/lang/String;
    .restart local v10    # "passwords":[Ljava/lang/String;
    :cond_13
    const-string v0, "ihdtv.top"

    invoke-static {p0, v0}, Lcom/gemini/custom/ihdtv;->setPlaylist_url_pw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/gemini/custom/ihdtv;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/playlist.m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1953
    .end local v10    # "passwords":[Ljava/lang/String;
    :cond_14
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huidixing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "woini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    if-eqz p1, :cond_17

    if-eqz p0, :cond_17

    const-string v0, "geminipassword"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1954
    const-string v0, "gjinghaog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1955
    .restart local v10    # "passwords":[Ljava/lang/String;
    array-length v0, v10

    const/4 v1, 0x2

    if-lt v0, v1, :cond_16

    .line 1956
    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-static {p0, v0}, Lcom/gemini/custom/ihdtv;->geturl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1958
    :cond_16
    const-string v0, "ihdtv.top"

    invoke-static {p0, v0}, Lcom/gemini/custom/ihdtv;->geturl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1961
    .end local v10    # "passwords":[Ljava/lang/String;
    :cond_17
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huidixing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "woini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    if-eqz p1, :cond_19

    if-eqz p0, :cond_19

    const-string v0, "rtmp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1962
    invoke-static {p0, p1}, Lcom/gemini/custom/ihdtv;->get_rtmp_url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 1963
    :cond_19
    if-eqz p1, :cond_12

    const-string v0, "geminipassword"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1964
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&uidgemini="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/gemini/play/MGplayer;->seconds:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 1967
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?uidgemini="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/gemini/play/MGplayer;->seconds:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 1982
    .end local v7    # "key_url2":Ljava/lang/String;
    :cond_1b
    invoke-static {p0}, Lcom/gemini/play/LIVEplayer;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    if-eqz p1, :cond_1d

    const-string v0, "geminipassword2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "geminipassword3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1983
    :cond_1c
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/gemini/play/LIVEplayer$17;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/LIVEplayer$17;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2182
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 2183
    :cond_1d
    const-string v0, "wow://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2184
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/LIVEplayer$18;

    invoke-direct {v1, p0, p2, p3}, Lcom/gemini/play/LIVEplayer$18;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2196
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1
.end method

.method private static playVideo_p2p(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)Ljava/lang/String;
    .locals 26
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "needrestart"    # I
    .param p3, "pHandler"    # Landroid/os/Handler;

    .prologue
    .line 2855
    const/16 v25, 0x0

    .line 2856
    .local v25, "userid":Ljava/lang/String;
    const/16 v21, 0x0

    .line 2858
    .local v21, "murl":Ljava/lang/String;
    const-string v4, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2859
    .local v9, "arrs":[Ljava/lang/String;
    const/4 v4, 0x3

    aget-object v4, v9, v4

    const-string v10, "\\."

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2860
    .local v8, "opts":[Ljava/lang/String;
    array-length v4, v9

    const/4 v10, 0x4

    if-ge v4, v10, :cond_0

    .line 2861
    const/4 v4, 0x0

    .line 3280
    :goto_0
    return-object v4

    .line 2863
    :cond_0
    if-eqz p1, :cond_1

    const-string v4, "@PWUSERID@"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 2864
    const-string v4, "@PWUSERID@"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 2865
    .local v22, "pwuserid":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v4, v0

    const/4 v10, 0x2

    if-lt v4, v10, :cond_1

    const/4 v4, 0x0

    aget-object v4, v22, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v22, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 2866
    const/4 v4, 0x0

    aget-object p1, v22, v4

    .line 2867
    const/4 v4, 0x1

    aget-object v25, v22, v4

    .line 2871
    .end local v22    # "pwuserid":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ps:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " userid:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2872
    if-eqz p1, :cond_3

    const-string v4, "geminipassword7"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "geminipassword8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "geminipassword5"

    .line 2873
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "geminipassword9"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2907
    :cond_2
    :goto_1
    const/16 v23, 0x0

    .line 2909
    .local v23, "ret":Ljava/lang/String;
    if-eqz p1, :cond_d

    const-string v4, "geminipasswordlocalkey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2911
    new-instance v4, Lcom/gemini/play/LIVEplayer$19;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v8, v9, v0, v1}, Lcom/gemini/play/LIVEplayer$19;-><init>([Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Handler;)V

    .line 2962
    invoke-virtual {v4}, Lcom/gemini/play/LIVEplayer$19;->start()V

    .line 2964
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2875
    .end local v23    # "ret":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "szysx"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "dhtv"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "familytv"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2876
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "smallseven"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "turbotv"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "anko"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2877
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$user=$mac="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v10}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "$playkey=$username=$channelid=$columnid=$vodid=$key="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    .line 2878
    invoke-virtual {v12}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v12}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 2879
    :cond_5
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "huanqiu"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "jptv"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2880
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$user=$mac="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v10}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "$username=$channelid=$columnid=$vodid=$key="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    .line 2881
    invoke-virtual {v12}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v12}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/gemini/play/MGplayer;->ip:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "$playkey="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v12, Lcom/gemini/play/MGplayer;->seconds:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 2882
    :cond_7
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "52home"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2883
    if-eqz p1, :cond_2

    const-string v4, "geminipassword6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2884
    array-length v4, v8

    const/4 v10, 0x2

    if-lt v4, v10, :cond_8

    .line 2885
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 2887
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x3

    aget-object v10, v9, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 2890
    :cond_9
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "lookiptv"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_a

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "xiaoqi"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_a

    .line 2891
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "aikanvip"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_a

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v10, "huaren"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_a
    const-string v4, "&userid=$username="

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    .line 2892
    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v20

    .line 2893
    .local v20, "mac":Ljava/lang/String;
    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v18

    .line 2894
    .local v18, "cpuid":Ljava/lang/String;
    sget-object v4, Lcom/gemini/custom/lookiptv;->mac:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 2895
    sget-object v20, Lcom/gemini/custom/lookiptv;->mac:Ljava/lang/String;

    .line 2897
    :cond_b
    sget-object v4, Lcom/gemini/custom/lookiptv;->cpuid:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2898
    sget-object v18, Lcom/gemini/custom/lookiptv;->cpuid:Ljava/lang/String;

    .line 2900
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$user=$mac="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "$username=$channelid=$columnid=$vodid=$key="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/gemini/play/MGplayer;->ip:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2901
    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "$playkey="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v12, Lcom/gemini/play/MGplayer;->seconds:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 2967
    .end local v18    # "cpuid":Ljava/lang/String;
    .end local v20    # "mac":Ljava/lang/String;
    .restart local v23    # "ret":Ljava/lang/String;
    :cond_d
    if-eqz p1, :cond_10

    const-string v4, "geminipassword4"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v25, :cond_10

    const-string v4, "http://"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "https://"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2968
    :cond_e
    const-string v4, "@"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2969
    .local v5, "userids":[Ljava/lang/String;
    array-length v4, v5

    const/4 v10, 0x2

    if-ne v4, v10, :cond_f

    .line 2970
    const/4 v4, 0x0

    sput-object v4, Lcom/gemini/play/LIVEplayer;->p2p_password:Ljava/lang/String;

    .line 2972
    new-instance v4, Lcom/gemini/play/LIVEplayer$20;

    invoke-direct {v4, v5}, Lcom/gemini/play/LIVEplayer$20;-><init>([Ljava/lang/String;)V

    .line 2997
    invoke-virtual {v4}, Lcom/gemini/play/LIVEplayer$20;->start()V

    .line 3000
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3001
    .end local v5    # "userids":[Ljava/lang/String;
    :cond_10
    if-eqz p1, :cond_15

    const-string v4, "geminipassword5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v25, :cond_15

    const-string v4, "http://"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "https://"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3002
    :cond_11
    const-string v4, "@"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3003
    .restart local v5    # "userids":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 3004
    .local v24, "useragent":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3005
    .local v19, "link_tmp":Ljava/lang/String;
    array-length v4, v5

    const/4 v10, 0x3

    if-lt v4, v10, :cond_13

    .line 3008
    array-length v4, v5

    const/4 v10, 0x4

    if-lt v4, v10, :cond_12

    .line 3009
    const/4 v4, 0x3

    aget-object v24, v5, v4

    .line 3011
    :cond_12
    array-length v4, v5

    const/4 v10, 0x5

    if-lt v4, v10, :cond_13

    .line 3012
    const/4 v4, 0x4

    aget-object v19, v5, v4

    .line 3015
    :cond_13
    move-object/from16 v7, v19

    .line 3017
    .local v7, "link":Ljava/lang/String;
    array-length v4, v5

    const/4 v10, 0x3

    if-lt v4, v10, :cond_14

    .line 3018
    move-object/from16 v6, v24

    .line 3019
    .local v6, "useragent2":Ljava/lang/String;
    new-instance v4, Lcom/gemini/play/LIVEplayer$21;

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v4 .. v11}, Lcom/gemini/play/LIVEplayer$21;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Handler;)V

    .line 3084
    invoke-virtual {v4}, Lcom/gemini/play/LIVEplayer$21;->start()V

    .line 3087
    .end local v6    # "useragent2":Ljava/lang/String;
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3088
    .end local v5    # "userids":[Ljava/lang/String;
    .end local v7    # "link":Ljava/lang/String;
    .end local v19    # "link_tmp":Ljava/lang/String;
    .end local v24    # "useragent":Ljava/lang/String;
    :cond_15
    if-eqz p1, :cond_16

    const-string v4, "geminipassword7"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3089
    move-object/from16 v11, v25

    .line 3090
    .local v11, "finalUserid":Ljava/lang/String;
    new-instance v10, Lcom/gemini/play/LIVEplayer$22;

    move-object v12, v8

    move-object v13, v9

    move/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lcom/gemini/play/LIVEplayer$22;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Handler;)V

    .line 3112
    invoke-virtual {v10}, Lcom/gemini/play/LIVEplayer$22;->start()V

    .line 3114
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3115
    .end local v11    # "finalUserid":Ljava/lang/String;
    :cond_16
    if-eqz p1, :cond_18

    const-string v4, "geminipassword8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3117
    const-string v4, "@"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3118
    .restart local v5    # "userids":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "userid = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3119
    array-length v4, v5

    const/4 v10, 0x2

    if-ge v4, v10, :cond_17

    .line 3120
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3122
    :cond_17
    new-instance v12, Lcom/gemini/play/LIVEplayer$23;

    move-object v13, v5

    move-object v14, v8

    move-object v15, v9

    move/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v12 .. v17}, Lcom/gemini/play/LIVEplayer$23;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Handler;)V

    .line 3186
    invoke-virtual {v12}, Lcom/gemini/play/LIVEplayer$23;->start()V

    .line 3188
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3189
    .end local v5    # "userids":[Ljava/lang/String;
    :cond_18
    if-eqz p1, :cond_1a

    const-string v4, "geminipassword9"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3190
    const-string v4, "@"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3191
    .restart local v5    # "userids":[Ljava/lang/String;
    array-length v4, v5

    const/4 v10, 0x3

    if-lt v4, v10, :cond_19

    .line 3192
    new-instance v4, Lcom/gemini/play/LIVEplayer$24;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v8, v9, v0}, Lcom/gemini/play/LIVEplayer$24;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler;)V

    sput-object v4, Lcom/gemini/play/LIVEplayer;->geminipassword9_thread:Ljava/lang/Thread;

    .line 3230
    sget-object v4, Lcom/gemini/play/LIVEplayer;->geminipassword9_thread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 3232
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3235
    .end local v5    # "userids":[Ljava/lang/String;
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mac:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v10}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "cpuid:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v10}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "ip:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Lcom/gemini/play/MGplayer;->ip:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " playVideo_p2p = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3237
    if-eqz p1, :cond_1b

    const-string v4, ""

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_1b

    if-eqz p1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1d

    .line 3238
    :cond_1b
    if-nez v25, :cond_1c

    .line 3239
    const/4 v4, 0x0

    aget-object v4, v8, v4

    const/4 v10, 0x2

    aget-object v10, v9, v10

    sget-object v12, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v12}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p2

    invoke-static {v4, v10, v12, v0}, Lcom/gemini/play/MGplayer;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 3250
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playvideo password "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " p2p ret:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3253
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "AML8726"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3254
    array-length v4, v8

    const/4 v10, 0x2

    if-lt v4, v10, :cond_1f

    .line 3255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://127.0.0.1:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_3
    move-object/from16 v4, v21

    .line 3280
    goto/16 :goto_0

    .line 3241
    :cond_1c
    const/4 v4, 0x0

    aget-object v4, v8, v4

    const/4 v10, 0x2

    aget-object v10, v9, v10

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v4, v10, v0, v1}, Lcom/gemini/play/MGplayer;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .line 3244
    :cond_1d
    if-nez v25, :cond_1e

    .line 3245
    const/4 v4, 0x0

    aget-object v4, v8, v4

    const/4 v10, 0x2

    aget-object v10, v9, v10

    sget-object v12, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v12}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v4, v10, v0, v12, v1}, Lcom/gemini/play/MGplayer;->s1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_2

    .line 3247
    :cond_1e
    const/4 v4, 0x0

    aget-object v4, v8, v4

    const/4 v10, 0x2

    aget-object v10, v9, v10

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, p2

    invoke-static {v4, v10, v0, v1, v2}, Lcom/gemini/play/MGplayer;->s1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_2

    .line 3257
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://127.0.0.1:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x3

    aget-object v10, v9, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    .line 3259
    :cond_20
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "HI3716M"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3267
    array-length v4, v8

    const/4 v10, 0x2

    if-lt v4, v10, :cond_21

    .line 3268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://127.0.0.1:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 3270
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://127.0.0.1:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x3

    aget-object v10, v9, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 3273
    :cond_22
    array-length v4, v8

    const/4 v10, 0x2

    if-lt v4, v10, :cond_23

    .line 3274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://127.0.0.1:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 3276
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://127.0.0.1:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x3

    aget-object v10, v9, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3
.end method

.method public static playWaterMark(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "watermarkImage"    # Landroid/widget/ImageView;

    .prologue
    const/4 v5, 0x0

    .line 2708
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2709
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->getVideoWaterMark(I)Ljava/lang/String;

    move-result-object v2

    .line 2710
    .local v2, "watermark":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "watermark = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2711
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    sget v3, Lcom/gemini/play/MGplayer;->watermark_site:I

    if-ltz v3, :cond_1

    .line 2712
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/icon/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2714
    .local v1, "imagePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2715
    .local v0, "bit":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2725
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "imagePath":Ljava/lang/String;
    .end local v2    # "watermark":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2716
    .restart local v2    # "watermark":Ljava/lang/String;
    :cond_1
    sget v3, Lcom/gemini/play/MGplayer;->watermark_site:I

    if-ltz v3, :cond_2

    .line 2717
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/icon/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/LIVEplayer;->watermask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2719
    .restart local v1    # "imagePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2720
    .restart local v0    # "bit":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2722
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "imagePath":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static resumeDecode()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 4020
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 4021
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->stopVideoForHard2(Lcom/gemini/play/ExoPlayerView;)V

    .line 4022
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4023
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    .line 4024
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 4030
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 4031
    return-void

    .line 4025
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    if-ltz v0, :cond_0

    .line 4026
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_0
.end method

.method private static saveCurrentID(Ljava/lang/String;)V
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 3284
    if-nez p0, :cond_0

    .line 3290
    :goto_0
    return-void

    .line 3287
    :cond_0
    sget-object v1, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3288
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "current_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static selectDecode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 3983
    const/4 v0, -0x1

    .line 3984
    .local v0, "inx":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDecode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getPreDecode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3985
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 3986
    sget-object v1, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->stopVideoForHard2(Lcom/gemini/play/ExoPlayerView;)V

    .line 3987
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 3988
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    .line 3989
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 3999
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "passwordexo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz p0, :cond_7

    const-string v1, "gp2p://"

    .line 4000
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    const-string v1, "passwordexo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4001
    :cond_2
    const/4 v0, 0x3

    .line 4002
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 4003
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 4007
    :goto_1
    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    .line 4016
    :goto_2
    return v0

    .line 3990
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3991
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_0

    .line 3993
    :cond_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 3994
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    goto :goto_0

    .line 3995
    :cond_5
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 3996
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_0

    .line 4005
    :cond_6
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    goto :goto_1

    .line 4009
    :cond_7
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    .line 4010
    if-ltz v0, :cond_8

    .line 4011
    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_2

    .line 4013
    :cond_8
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    goto :goto_2
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "t"    # Landroid/content/Context;

    .prologue
    .line 126
    sput-object p0, Lcom/gemini/play/LIVEplayer;->_this:Landroid/content/Context;

    .line 127
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doudouzi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aikanvip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xtvants"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "goat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vipiptv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "liveline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Lcom/nagasoft/player/VJPlayer;

    sget-object v1, Lcom/gemini/play/LIVEplayer;->vjmsinterface:Lcom/nagasoft/player/UrlChanged;

    invoke-direct {v0, v1}, Lcom/nagasoft/player/VJPlayer;-><init>(Lcom/nagasoft/player/UrlChanged;)V

    sput-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    .line 131
    :cond_1
    return-void
.end method

.method public static setVideoIntroduction(ILjava/lang/String;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "preview"    # Ljava/lang/String;

    .prologue
    .line 744
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 745
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v1

    .line 746
    .local v1, "status":Lcom/gemini/play/UrlStatus;
    iget v2, v1, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v2, p0, :cond_0

    .line 747
    iput-object p1, v1, Lcom/gemini/play/UrlStatus;->introduction:Ljava/lang/String;

    .line 744
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 750
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    return-void
.end method

.method public static setVideoIntroductions(IILjava/lang/String;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "index"    # I
    .param p2, "preview"    # Ljava/lang/String;

    .prologue
    .line 1038
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1039
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->statusGet(I)Lcom/gemini/play/UrlStatus;

    move-result-object v1

    .line 1040
    .local v1, "status":Lcom/gemini/play/UrlStatus;
    iget v2, v1, Lcom/gemini/play/UrlStatus;->id:I

    if-ne v2, p0, :cond_0

    .line 1041
    iget-object v2, v1, Lcom/gemini/play/UrlStatus;->introductions:[Ljava/lang/String;

    aput-object p2, v2, p1

    .line 1038
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    .end local v1    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    return-void
.end method

.method public static sourceGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 345
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iget-object v0, v0, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    return-object v0
.end method

.method public static statusGet(I)Lcom/gemini/play/UrlStatus;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 325
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    return-object v0
.end method

.method public static stopCheckVideo()V
    .locals 1

    .prologue
    .line 3679
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/LIVEplayer;->check_playing_running:Z

    .line 3680
    const-string v0, "live check_playing_running false"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3681
    return-void
.end method

.method public static stopStatus()V
    .locals 1

    .prologue
    .line 3684
    const/4 v0, 0x0

    sput v0, Lcom/gemini/play/LIVEplayer;->check_isplaying:I

    .line 3685
    return-void
.end method

.method public static stopVideoForHard(Lcom/gemini/play/VideoView;)V
    .locals 2
    .param p0, "mVideoView"    # Lcom/gemini/play/VideoView;

    .prologue
    const/4 v1, 0x1

    .line 1185
    sput-boolean v1, Lcom/gemini/play/LIVEplayer;->player_isexit:Z

    .line 1187
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1189
    invoke-static {}, Lcom/gemini/play/Ghttp;->stop()V

    .line 1191
    invoke-static {}, Lcom/gemini/play/MGplayer;->s5()V

    .line 1194
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->pause()V

    .line 1195
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->stopPlayback()V

    .line 1198
    sget v0, Lcom/gemini/play/MGplayer;->start_tvbus:I

    if-ne v0, v1, :cond_0

    .line 1199
    sget-object v0, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    invoke-virtual {v0}, Lcom/tvbus/engine/TvbusApi;->stopChannel()V

    .line 1202
    :cond_0
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    if-ne v0, v1, :cond_1

    .line 1203
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    invoke-virtual {v0}, Lcom/nagasoft/player/VJPlayer;->stop()V

    .line 1204
    :cond_1
    return-void
.end method

.method public static stopVideoForHard2(Lcom/gemini/play/ExoPlayerView;)V
    .locals 2
    .param p0, "mVideoView"    # Lcom/gemini/play/ExoPlayerView;

    .prologue
    const/4 v1, 0x1

    .line 1208
    sput-boolean v1, Lcom/gemini/play/LIVEplayer;->player_isexit:Z

    .line 1210
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1212
    invoke-static {}, Lcom/gemini/play/Ghttp;->stop()V

    .line 1214
    invoke-static {}, Lcom/gemini/play/MGplayer;->s5()V

    .line 1216
    invoke-virtual {p0}, Lcom/gemini/play/ExoPlayerView;->pause()V

    .line 1217
    invoke-virtual {p0}, Lcom/gemini/play/ExoPlayerView;->onDestroy()V

    .line 1220
    sget v0, Lcom/gemini/play/MGplayer;->start_tvbus:I

    if-ne v0, v1, :cond_0

    .line 1221
    sget-object v0, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    invoke-virtual {v0}, Lcom/tvbus/engine/TvbusApi;->stopChannel()V

    .line 1224
    :cond_0
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    if-ne v0, v1, :cond_1

    .line 1225
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    invoke-virtual {v0}, Lcom/nagasoft/player/VJPlayer;->stop()V

    .line 1226
    :cond_1
    return-void
.end method

.method public static stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V
    .locals 2
    .param p0, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    const/4 v1, 0x1

    .line 1164
    sput-boolean v1, Lcom/gemini/play/LIVEplayer;->player_isexit:Z

    .line 1166
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1167
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1169
    :cond_0
    invoke-static {}, Lcom/gemini/play/Ghttp;->stop()V

    .line 1170
    invoke-static {}, Lcom/gemini/play/MGplayer;->s5()V

    .line 1172
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 1173
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->onDestory()V

    .line 1175
    sget v0, Lcom/gemini/play/MGplayer;->start_tvbus:I

    if-ne v0, v1, :cond_1

    .line 1176
    sget-object v0, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    invoke-virtual {v0}, Lcom/tvbus/engine/TvbusApi;->stopChannel()V

    .line 1179
    :cond_1
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    if-ne v0, v1, :cond_2

    .line 1180
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    invoke-virtual {v0}, Lcom/nagasoft/player/VJPlayer;->stop()V

    .line 1181
    :cond_2
    return-void
.end method

.method public static stopVideoForSoft2(Lio/vov/vitamio/widget/VideoView;)V
    .locals 2
    .param p0, "mVideoView"    # Lio/vov/vitamio/widget/VideoView;

    .prologue
    const/4 v1, 0x1

    .line 1142
    sput-boolean v1, Lcom/gemini/play/LIVEplayer;->player_isexit:Z

    .line 1144
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1146
    invoke-static {}, Lcom/gemini/play/Ghttp;->stop()V

    .line 1148
    invoke-static {}, Lcom/gemini/play/MGplayer;->s5()V

    .line 1150
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->pause()V

    .line 1155
    :cond_0
    sget v0, Lcom/gemini/play/MGplayer;->start_tvbus:I

    if-ne v0, v1, :cond_1

    .line 1156
    sget-object v0, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    invoke-virtual {v0}, Lcom/tvbus/engine/TvbusApi;->stopChannel()V

    .line 1159
    :cond_1
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    if-ne v0, v1, :cond_2

    .line 1160
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    invoke-virtual {v0}, Lcom/nagasoft/player/VJPlayer;->stop()V

    .line 1161
    :cond_2
    return-void
.end method

.method public static type2Push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "needps"    # Ljava/lang/String;
    .param p2, "ps"    # Ljava/lang/String;

    .prologue
    .line 1062
    new-instance v0, Lcom/gemini/play/Type2Status;

    invoke-direct {v0}, Lcom/gemini/play/Type2Status;-><init>()V

    .line 1063
    .local v0, "status":Lcom/gemini/play/Type2Status;
    iput-object p0, v0, Lcom/gemini/play/Type2Status;->id:Ljava/lang/String;

    .line 1064
    iput-object p1, v0, Lcom/gemini/play/Type2Status;->needps:Ljava/lang/String;

    .line 1065
    iput-object p2, v0, Lcom/gemini/play/Type2Status;->ps:Ljava/lang/String;

    .line 1066
    sget-object v1, Lcom/gemini/play/LIVEplayer;->type2Array:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static type2Size()I
    .locals 1

    .prologue
    .line 1086
    sget-object v0, Lcom/gemini/play/LIVEplayer;->type2Array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static typeClear()V
    .locals 1

    .prologue
    .line 1126
    sget-object v0, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    sget-object v0, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1128
    :cond_0
    return-void
.end method

.method public static typeGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 329
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iget-object v0, v0, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    return-object v0
.end method

.method public static typeIdGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 1080
    sget-object v0, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    if-gez p0, :cond_1

    .line 1081
    :cond_0
    const/4 v0, 0x0

    .line 1082
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/TypeStatus;

    iget-object v0, v0, Lcom/gemini/play/TypeStatus;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public static typeIndexGetFormId(Ljava/lang/String;)I
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1118
    sget-object v1, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/TypeStatus;

    iget-object v1, v1, Lcom/gemini/play/TypeStatus;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1117
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1122
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static typeNameGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 1074
    sget-object v0, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    if-gez p0, :cond_1

    .line 1075
    :cond_0
    const-string v0, ""

    .line 1076
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/TypeStatus;

    iget-object v0, v0, Lcom/gemini/play/TypeStatus;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public static typeNameGetFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1109
    sget-object v1, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/TypeStatus;

    iget-object v1, v1, Lcom/gemini/play/TypeStatus;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    sget-object v1, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/TypeStatus;

    iget-object v1, v1, Lcom/gemini/play/TypeStatus;->type:Ljava/lang/String;

    .line 1113
    :goto_1
    return-object v1

    .line 1108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/gemini/play/LIVEplayer;->type2Array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1091
    sget-object v1, Lcom/gemini/play/LIVEplayer;->type2Array:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/Type2Status;

    iget-object v1, v1, Lcom/gemini/play/Type2Status;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    sget-object v1, Lcom/gemini/play/LIVEplayer;->type2Array:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/Type2Status;

    iget-object v1, v1, Lcom/gemini/play/Type2Status;->needps:Ljava/lang/String;

    .line 1095
    :goto_1
    return-object v1

    .line 1090
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public static typePasswordGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1099
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/gemini/play/LIVEplayer;->type2Array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1100
    sget-object v1, Lcom/gemini/play/LIVEplayer;->type2Array:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/Type2Status;

    iget-object v1, v1, Lcom/gemini/play/Type2Status;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    sget-object v1, Lcom/gemini/play/LIVEplayer;->type2Array:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/Type2Status;

    iget-object v1, v1, Lcom/gemini/play/Type2Status;->ps:Ljava/lang/String;

    .line 1104
    :goto_1
    return-object v1

    .line 1099
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1104
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static typePush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1047
    new-instance v0, Lcom/gemini/play/TypeStatus;

    invoke-direct {v0}, Lcom/gemini/play/TypeStatus;-><init>()V

    .line 1048
    .local v0, "status":Lcom/gemini/play/TypeStatus;
    iput-object p0, v0, Lcom/gemini/play/TypeStatus;->id:Ljava/lang/String;

    .line 1049
    iput-object p1, v0, Lcom/gemini/play/TypeStatus;->type:Ljava/lang/String;

    .line 1050
    sget-object v1, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static typePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1054
    new-instance v0, Lcom/gemini/play/TypeStatus;

    invoke-direct {v0}, Lcom/gemini/play/TypeStatus;-><init>()V

    .line 1055
    .local v0, "status":Lcom/gemini/play/TypeStatus;
    iput-object p0, v0, Lcom/gemini/play/TypeStatus;->id:Ljava/lang/String;

    .line 1056
    iput-object p1, v0, Lcom/gemini/play/TypeStatus;->type:Ljava/lang/String;

    .line 1057
    iput-object p2, v0, Lcom/gemini/play/TypeStatus;->key:Ljava/lang/String;

    .line 1058
    sget-object v1, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static typeSize()I
    .locals 1

    .prologue
    .line 1070
    sget-object v0, Lcom/gemini/play/LIVEplayer;->typeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static urlClear()V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    :cond_0
    return-void
.end method

.method public static urlPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "introid"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Lcom/gemini/play/UrlStatus;

    invoke-direct {v0}, Lcom/gemini/play/UrlStatus;-><init>()V

    .line 189
    .local v0, "status":Lcom/gemini/play/UrlStatus;
    iput-object p1, v0, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 190
    iput-object p2, v0, Lcom/gemini/play/UrlStatus;->image:Ljava/lang/String;

    .line 191
    iput-object p3, v0, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 192
    iput p0, v0, Lcom/gemini/play/UrlStatus;->id:I

    .line 193
    iput-object p5, v0, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 194
    iput-object p4, v0, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 197
    iput-object p6, v0, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    .line 198
    iput-object p7, v0, Lcom/gemini/play/UrlStatus;->introid:Ljava/lang/String;

    .line 200
    invoke-static {p0}, Lcom/gemini/play/LIVEplayer;->existVideoId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    sget-object v1, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 203
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static urlPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
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
    .line 134
    new-instance v0, Lcom/gemini/play/UrlStatus;

    invoke-direct {v0}, Lcom/gemini/play/UrlStatus;-><init>()V

    .line 135
    .local v0, "status":Lcom/gemini/play/UrlStatus;
    iput-object p1, v0, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 136
    iput-object p2, v0, Lcom/gemini/play/UrlStatus;->image:Ljava/lang/String;

    .line 137
    iput-object p3, v0, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 138
    iput p0, v0, Lcom/gemini/play/UrlStatus;->id:I

    .line 139
    iput-object p5, v0, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 140
    iput-object p4, v0, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 141
    iput-object p6, v0, Lcom/gemini/play/UrlStatus;->introduction:Ljava/lang/String;

    .line 142
    iget-object v1, v0, Lcom/gemini/play/UrlStatus;->introductions:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    .line 143
    iput-object p7, v0, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    .line 144
    iput-object p8, v0, Lcom/gemini/play/UrlStatus;->introid:Ljava/lang/String;

    .line 159
    invoke-static {p0}, Lcom/gemini/play/LIVEplayer;->existVideoId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    sget-object v1, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 162
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static urlPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "introduction"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "introid"    # Ljava/lang/String;
    .param p9, "watermark"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Lcom/gemini/play/UrlStatus;

    invoke-direct {v0}, Lcom/gemini/play/UrlStatus;-><init>()V

    .line 168
    .local v0, "status":Lcom/gemini/play/UrlStatus;
    iput-object p1, v0, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 169
    iput-object p2, v0, Lcom/gemini/play/UrlStatus;->image:Ljava/lang/String;

    .line 170
    iput-object p3, v0, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 171
    iput p0, v0, Lcom/gemini/play/UrlStatus;->id:I

    .line 172
    iput-object p5, v0, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 173
    iput-object p4, v0, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 174
    iput-object p6, v0, Lcom/gemini/play/UrlStatus;->introduction:Ljava/lang/String;

    .line 175
    iget-object v1, v0, Lcom/gemini/play/UrlStatus;->introductions:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    .line 176
    iput-object p7, v0, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    .line 177
    iput-object p8, v0, Lcom/gemini/play/UrlStatus;->introid:Ljava/lang/String;

    .line 178
    iput-object p9, v0, Lcom/gemini/play/UrlStatus;->watermark:Ljava/lang/String;

    .line 180
    invoke-static {p0}, Lcom/gemini/play/LIVEplayer;->existVideoId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    sget-object v1, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 183
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static urlSize()I
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static watermarkGet(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 305
    sget-object v0, Lcom/gemini/play/LIVEplayer;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/UrlStatus;

    iget-object v0, v0, Lcom/gemini/play/UrlStatus;->watermark:Ljava/lang/String;

    return-object v0
.end method
