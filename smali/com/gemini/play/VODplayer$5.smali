.class final Lcom/gemini/play/VODplayer$5;
.super Landroid/os/Handler;
.source "VODplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VODplayer;->playVideoForHard2(Landroid/content/Context;Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$mVideoView:Lcom/gemini/play/ExoPlayerView;

.field final synthetic val$seek:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/gemini/play/VODplayer$5;->val$_this:Landroid/content/Context;

    iput-object p2, p0, Lcom/gemini/play/VODplayer$5;->val$mVideoView:Lcom/gemini/play/ExoPlayerView;

    iput-object p3, p0, Lcom/gemini/play/VODplayer$5;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/gemini/play/VODplayer$5;->val$seek:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1376
    const/4 v0, 0x0

    .line 1377
    .local v0, "murl":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1397
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    .line 1398
    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$mVideoView:Lcom/gemini/play/ExoPlayerView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/gemini/play/ExoPlayerView;->setRendererContentType(I)V

    .line 1399
    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$mVideoView:Lcom/gemini/play/ExoPlayerView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gemini/play/ExoPlayerView;->setVideoUri(Landroid/net/Uri;)V

    .line 1400
    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$url:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$url:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$url:Ljava/lang/String;

    const-string v4, "rtsp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$url:Ljava/lang/String;

    const-string v4, "youku@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$url:Ljava/lang/String;

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/gemini/play/VODplayer$5;->val$seek:I

    if-lez v3, :cond_2

    .line 1401
    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$mVideoView:Lcom/gemini/play/ExoPlayerView;

    iget v4, p0, Lcom/gemini/play/VODplayer$5;->val$seek:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/gemini/play/ExoPlayerView;->seekTo(J)V

    .line 1406
    :cond_1
    :goto_1
    return-void

    .line 1379
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1380
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pw"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1381
    .local v1, "pw":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$_this:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/gemini/play/VODplayer;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    goto :goto_0

    .line 1386
    .end local v1    # "pw":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1387
    goto :goto_0

    .line 1402
    :cond_2
    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$url:Ljava/lang/String;

    const-string v4, "p2p://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$url:Ljava/lang/String;

    const-string v4, "forcetv://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    iget v3, p0, Lcom/gemini/play/VODplayer$5;->val$seek:I

    if-lez v3, :cond_1

    .line 1403
    iget-object v3, p0, Lcom/gemini/play/VODplayer$5;->val$url:Ljava/lang/String;

    iget v4, p0, Lcom/gemini/play/VODplayer$5;->val$seek:I

    invoke-static {v3, v4}, Lcom/gemini/play/VODplayer;->seekVideo(Ljava/lang/String;I)V

    goto :goto_1

    .line 1377
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
