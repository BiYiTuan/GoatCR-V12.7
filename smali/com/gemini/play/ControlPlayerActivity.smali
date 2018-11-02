.class public Lcom/gemini/play/ControlPlayerActivity;
.super Landroid/app/Activity;
.source "ControlPlayerActivity.java"


# static fields
.field public static instance:Landroid/app/Activity;


# instance fields
.field private CurrentURL:Ljava/lang/String;

.field public VideoViewH:Lcom/gemini/play/VideoView;

.field private VideoViewS:Lorg/videolan/vlc/VlcVideoView;

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field pHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->CurrentURL:Ljava/lang/String;

    .line 418
    new-instance v0, Lcom/gemini/play/ControlPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/ControlPlayerActivity$6;-><init>(Lcom/gemini/play/ControlPlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    .line 446
    new-instance v0, Lcom/gemini/play/ControlPlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/ControlPlayerActivity$7;-><init>(Lcom/gemini/play/ControlPlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->pHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/ControlPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/ControlPlayerActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->CurrentURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/gemini/play/ControlPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/ControlPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/gemini/play/ControlPlayerActivity;->CurrentURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 21
    invoke-static {p0}, Lcom/gemini/play/ControlPlayerActivity;->createPlaylist(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/ControlPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/ControlPlayerActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/gemini/play/ControlPlayerActivity;->stopVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/gemini/play/ControlPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/ControlPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/gemini/play/ControlPlayerActivity;->playVideo(Ljava/lang/String;)V

    return-void
.end method

.method private static createPlaylist(I)Ljava/lang/String;
    .locals 7
    .param p0, "gplayer_port"    # I

    .prologue
    .line 319
    :try_start_0
    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v5, "playlist.m3u8"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 321
    .local v2, "outStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#EXTM3U\n#EXT-X-ALLOW-CACHE:YES\n#EXT-X-TARGETDURATION:72000\n#EXT-X-MEDIA-SEQUENCE:110236\n#EXTINF:1,\nhttp://127.0.0.1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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

    .line 329
    .local v3, "text":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 330
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 331
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
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

    .line 345
    .local v1, "murl":Ljava/lang/String;
    return-object v1

    .line 333
    .end local v1    # "murl":Ljava/lang/String;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 338
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v3    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 81
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {p0, v0, p1}, Lcom/gemini/play/ControlPlayerActivity;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;)V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {p0, v0, p1}, Lcom/gemini/play/ControlPlayerActivity;->playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopVideo()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {p0, v0}, Lcom/gemini/play/ControlPlayerActivity;->stopVideoForHard(Lcom/gemini/play/VideoView;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {p0, v0}, Lcom/gemini/play/ControlPlayerActivity;->stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V

    goto :goto_0
.end method


# virtual methods
.method public exitActivity()V
    .locals 3

    .prologue
    .line 470
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/gemini/play/ControlPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 472
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/ControlPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/ControlPlayerActivity$8;

    invoke-direct {v2, p0}, Lcom/gemini/play/ControlPlayerActivity$8;-><init>(Lcom/gemini/play/ControlPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 481
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/ControlPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/ControlPlayerActivity$9;

    invoke-direct {v2, p0}, Lcom/gemini/play/ControlPlayerActivity$9;-><init>(Lcom/gemini/play/ControlPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 488
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 489
    return-void
.end method

.method public isUseHlsPlugin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 350
    if-nez p1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v1

    .line 353
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "cpuinfo":Ljava/lang/String;
    const-string v3, "rtsp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    const-string v3, "gemini://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "gp2p://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 358
    goto :goto_0

    .line 363
    :cond_3
    const-string v3, "S805"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 365
    const-string v3, "rtmp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    const-string v3, "udp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, ":1935"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "playlist.m3u8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 370
    goto :goto_0

    .line 371
    :cond_4
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "playlist.m3u8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    .line 374
    goto :goto_0

    .line 376
    :cond_6
    const-string v3, "RK3128"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 378
    const-string v3, "rtmp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    const-string v3, "udp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, ":1935"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "playlist.m3u8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    :cond_7
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "playlist.m3u8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_8
    move v1, v2

    .line 387
    goto/16 :goto_0

    .line 390
    :cond_9
    const-string v3, "HIK3V2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 392
    const-string v3, "rtmp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 394
    const-string v3, "udp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    .line 395
    goto/16 :goto_0

    .line 396
    :cond_a
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ":1935"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "playlist.m3u8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    :cond_b
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "playlist.m3u8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    :cond_c
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, ":1935"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "playlist.m3u8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_d
    move v1, v2

    .line 405
    goto/16 :goto_0

    .line 410
    :cond_e
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 413
    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v3, 0x6

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f09002e

    invoke-virtual {p0, v1}, Lcom/gemini/play/ControlPlayerActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/gemini/play/ControlPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 33
    sput-object p0, Lcom/gemini/play/ControlPlayerActivity;->instance:Landroid/app/Activity;

    .line 35
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 37
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/gemini/play/ControlPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/VlcVideoView;

    iput-object v1, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    .line 55
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/gemini/play/ControlPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VideoView;

    iput-object v1, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewH:Lcom/gemini/play/VideoView;

    .line 56
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewH:Lcom/gemini/play/VideoView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity;->VideoViewH:Lcom/gemini/play/VideoView;

    new-instance v2, Lcom/gemini/play/ControlPlayerActivity$1;

    invoke-direct {v2, p0}, Lcom/gemini/play/ControlPlayerActivity$1;-><init>(Lcom/gemini/play/ControlPlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/gemini/play/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/gemini/play/ControlPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "vod_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControlPlayerActivity url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 67
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 69
    invoke-direct {p0, v0}, Lcom/gemini/play/ControlPlayerActivity;->playVideo(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v1, Lcom/gemini/play/MGplayer;->Broadcast:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 72
    sget-object v1, Lcom/gemini/play/MGplayer;->Broadcast:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gemini/play/ControlPlayerActivity;->playVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/gemini/play/ControlPlayerActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 113
    sparse-switch p1, :sswitch_data_0

    .line 124
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 116
    :sswitch_0
    invoke-static {p0}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 117
    invoke-static {p0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 121
    :sswitch_1
    invoke-virtual {p0}, Lcom/gemini/play/ControlPlayerActivity;->exitActivity()V

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;)V
    .locals 3
    .param p1, "mVideoView"    # Lcom/gemini/play/VideoView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 195
    invoke-virtual {p1}, Lcom/gemini/play/VideoView;->pause()V

    .line 196
    invoke-virtual {p1}, Lcom/gemini/play/VideoView;->stopPlayback()V

    .line 198
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/gemini/play/ControlPlayerActivity;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 200
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 201
    invoke-static {v2}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 204
    :cond_0
    new-instance v0, Lcom/gemini/play/ControlPlayerActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/gemini/play/ControlPlayerActivity$3;-><init>(Lcom/gemini/play/ControlPlayerActivity;Lcom/gemini/play/VideoView;Ljava/lang/String;)V

    .line 236
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-virtual {p0, p2, v0}, Lcom/gemini/play/ControlPlayerActivity;->playVideoMessage(Ljava/lang/String;Landroid/os/Handler;)V

    .line 237
    return-void
.end method

.method public playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;)V
    .locals 3
    .param p1, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-virtual {p1}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 151
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/gemini/play/ControlPlayerActivity;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 153
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 154
    invoke-static {v2}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 157
    :cond_0
    new-instance v0, Lcom/gemini/play/ControlPlayerActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/gemini/play/ControlPlayerActivity$2;-><init>(Lcom/gemini/play/ControlPlayerActivity;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;)V

    .line 189
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-virtual {p0, p2, v0}, Lcom/gemini/play/ControlPlayerActivity;->playVideoMessage(Ljava/lang/String;Landroid/os/Handler;)V

    .line 190
    return-void
.end method

.method public playVideoMessage(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pHandler"    # Landroid/os/Handler;

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/gemini/play/ControlPlayerActivity;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/ControlPlayerActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/gemini/play/ControlPlayerActivity$4;-><init>(Lcom/gemini/play/ControlPlayerActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Lcom/gemini/play/ControlPlayerActivity;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/ControlPlayerActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/gemini/play/ControlPlayerActivity$5;-><init>(Lcom/gemini/play/ControlPlayerActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopVideoForHard(Lcom/gemini/play/VideoView;)V
    .locals 2
    .param p1, "mVideoView"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->CurrentURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->CurrentURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gemini/play/ControlPlayerActivity;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/gemini/play/VideoView;->pause()V

    .line 142
    invoke-virtual {p1}, Lcom/gemini/play/VideoView;->stopPlayback()V

    .line 143
    return-void
.end method

.method public stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V
    .locals 2
    .param p1, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->CurrentURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/ControlPlayerActivity;->CurrentURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gemini/play/ControlPlayerActivity;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 132
    :cond_0
    invoke-virtual {p1}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 134
    return-void
.end method
