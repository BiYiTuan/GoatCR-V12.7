.class final Lcom/gemini/play/VODplayer$2;
.super Landroid/os/Handler;
.source "VODplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VODplayer;->playVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

.field final synthetic val$seek:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/gemini/play/VODplayer$2;->val$_this:Landroid/content/Context;

    iput-object p2, p0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    iput-object p3, p0, Lcom/gemini/play/VODplayer$2;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/gemini/play/VODplayer$2;->val$seek:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1168
    const/4 v1, 0x0

    .line 1169
    .local v1, "murl":Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1190
    :goto_0
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playVideoForSoft:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1191
    if-eqz v1, :cond_1

    .line 1192
    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v5, v1}, Lorg/videolan/vlc/VlcVideoView;->startPlay(Ljava/lang/String;)V

    .line 1193
    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$url:Ljava/lang/String;

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$url:Ljava/lang/String;

    const-string v6, ".bsbt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1200
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v5}, Lorg/videolan/vlc/VlcVideoView;->start()V

    .line 1202
    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v6, "gp2p://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1203
    move-object v2, v1

    .line 1204
    .local v2, "murl_tmp":Ljava/lang/String;
    sget-object v0, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    .line 1205
    .local v0, "currenturl_tmp":Ljava/lang/String;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/gemini/play/VODplayer$2$1;

    invoke-direct {v6, p0, v0, v2}, Lcom/gemini/play/VODplayer$2$1;-><init>(Lcom/gemini/play/VODplayer$2;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1222
    .end local v0    # "currenturl_tmp":Ljava/lang/String;
    .end local v2    # "murl_tmp":Ljava/lang/String;
    :cond_1
    return-void

    .line 1171
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1172
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "pw"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1173
    .local v3, "p":Ljava/lang/String;
    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$_this:Landroid/content/Context;

    invoke-static {v5, v4, v3}, Lcom/gemini/play/VODplayer;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1174
    goto :goto_0

    .line 1178
    .end local v3    # "p":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    goto :goto_0

    .line 1197
    :cond_2
    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$url:Ljava/lang/String;

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$url:Ljava/lang/String;

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$url:Ljava/lang/String;

    const-string v6, "rtsp://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$url:Ljava/lang/String;

    const-string v6, "youku@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$url:Ljava/lang/String;

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    iget v5, p0, Lcom/gemini/play/VODplayer$2;->val$seek:I

    if-lez v5, :cond_0

    .line 1198
    iget-object v5, p0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    iget v6, p0, Lcom/gemini/play/VODplayer$2;->val$seek:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/videolan/vlc/VlcVideoView;->seekTo(J)V

    goto/16 :goto_1

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
