.class final Lcom/gemini/play/VODplayer$13;
.super Ljava/lang/Object;
.source "VODplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VODplayer;->checkVideo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2240
    iput-object p1, p0, Lcom/gemini/play/VODplayer$13;->val$_this:Landroid/content/Context;

    iput-object p2, p0, Lcom/gemini/play/VODplayer$13;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2242
    invoke-static {}, Lcom/gemini/play/VODplayer;->access$300()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2311
    :goto_0
    return-void

    .line 2247
    :cond_0
    sget-object v3, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v4, "gp2p://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/gemini/play/VODplayer;->mIsPause:Z

    if-nez v3, :cond_2

    .line 2248
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerreopen()I

    move-result v2

    .line 2249
    .local v2, "seek":I
    if-ltz v2, :cond_1

    .line 2250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=============mediaplayerreopen============ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2252
    :cond_1
    if-lt v2, v8, :cond_2

    .line 2253
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v3

    if-nez v3, :cond_5

    .line 2254
    iget-object v3, p0, Lcom/gemini/play/VODplayer$13;->val$_this:Landroid/content/Context;

    sget-object v4, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v6, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2, v6}, Lcom/gemini/play/VODplayer;->playVideoForHard(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;ILjava/lang/String;)V

    .line 2265
    .end local v2    # "seek":I
    :cond_2
    :goto_1
    sget-object v3, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/gemini/play/VODplayer;->mIsPause:Z

    if-nez v3, :cond_4

    .line 2266
    sget-object v3, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-static {v3}, Lcom/gemini/play/VODplayer;->getProgress(Ljava/lang/String;)I

    move-result v1

    .line 2268
    .local v1, "progress":I
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v3

    if-nez v3, :cond_8

    .line 2269
    sget-object v3, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v3}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2270
    const/16 v0, 0xc

    .line 2271
    .local v0, "check_playing_timeout":I
    sget-object v3, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v4, "gp2p://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayercache()I

    move-result v3

    if-lez v3, :cond_3

    .line 2272
    const/16 v0, 0xc

    .line 2273
    :cond_3
    invoke-static {}, Lcom/gemini/play/VODplayer;->access$408()I

    .line 2274
    invoke-static {}, Lcom/gemini/play/VODplayer;->access$400()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 2275
    invoke-static {v7}, Lcom/gemini/play/VODplayer;->access$402(I)I

    .line 2276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vod check_playing_running timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2277
    iget-object v3, p0, Lcom/gemini/play/VODplayer$13;->val$_this:Landroid/content/Context;

    sget-object v4, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v6, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v3, v4, v5, v1, v6}, Lcom/gemini/play/VODplayer;->playVideoForHard(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;ILjava/lang/String;)V

    .line 2310
    .end local v0    # "check_playing_timeout":I
    .end local v1    # "progress":I
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/gemini/play/VODplayer$13;->val$mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2255
    .restart local v2    # "seek":I
    :cond_5
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 2256
    sget-object v3, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v3, :cond_2

    .line 2257
    iget-object v3, p0, Lcom/gemini/play/VODplayer$13;->val$_this:Landroid/content/Context;

    sget-object v4, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v6, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2, v6}, Lcom/gemini/play/VODplayer;->playVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2258
    :cond_6
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v3

    if-ne v3, v9, :cond_2

    .line 2259
    sget-object v3, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v3, :cond_2

    .line 2260
    iget-object v3, p0, Lcom/gemini/play/VODplayer$13;->val$_this:Landroid/content/Context;

    sget-object v4, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v6, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2, v6}, Lcom/gemini/play/VODplayer;->playVideoForSoft2(Landroid/content/Context;Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2280
    .end local v2    # "seek":I
    .restart local v1    # "progress":I
    :cond_7
    invoke-static {v7}, Lcom/gemini/play/VODplayer;->access$402(I)I

    goto :goto_2

    .line 2282
    :cond_8
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v3

    if-ne v3, v8, :cond_b

    .line 2283
    sget-object v3, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v3}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2284
    const/16 v0, 0xf

    .line 2285
    .restart local v0    # "check_playing_timeout":I
    sget-object v3, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v4, "gp2p://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayercache()I

    move-result v3

    if-lez v3, :cond_9

    .line 2286
    const/16 v0, 0xa

    .line 2287
    :cond_9
    invoke-static {}, Lcom/gemini/play/VODplayer;->access$408()I

    .line 2288
    invoke-static {}, Lcom/gemini/play/VODplayer;->access$400()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 2289
    invoke-static {v7}, Lcom/gemini/play/VODplayer;->access$402(I)I

    .line 2290
    iget-object v3, p0, Lcom/gemini/play/VODplayer$13;->val$_this:Landroid/content/Context;

    sget-object v4, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v6, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v3, v4, v5, v1, v6}, Lcom/gemini/play/VODplayer;->playVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 2293
    .end local v0    # "check_playing_timeout":I
    :cond_a
    invoke-static {v7}, Lcom/gemini/play/VODplayer;->access$402(I)I

    goto :goto_2

    .line 2295
    :cond_b
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v3

    if-ne v3, v9, :cond_4

    .line 2296
    sget-object v3, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v3}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2297
    const/16 v0, 0xf

    .line 2298
    .restart local v0    # "check_playing_timeout":I
    sget-object v3, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v4, "gp2p://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayercache()I

    move-result v3

    if-lez v3, :cond_c

    .line 2299
    const/16 v0, 0xa

    .line 2300
    :cond_c
    invoke-static {}, Lcom/gemini/play/VODplayer;->access$408()I

    .line 2301
    invoke-static {}, Lcom/gemini/play/VODplayer;->access$400()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 2302
    invoke-static {v7}, Lcom/gemini/play/VODplayer;->access$402(I)I

    .line 2303
    iget-object v3, p0, Lcom/gemini/play/VODplayer$13;->val$_this:Landroid/content/Context;

    sget-object v4, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v6, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v3, v4, v5, v1, v6}, Lcom/gemini/play/VODplayer;->playVideoForSoft2(Landroid/content/Context;Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 2306
    .end local v0    # "check_playing_timeout":I
    :cond_d
    invoke-static {v7}, Lcom/gemini/play/VODplayer;->access$402(I)I

    goto/16 :goto_2
.end method
