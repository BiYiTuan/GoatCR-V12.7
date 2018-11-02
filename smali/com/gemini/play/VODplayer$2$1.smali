.class Lcom/gemini/play/VODplayer$2$1;
.super Ljava/lang/Object;
.source "VODplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VODplayer$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VODplayer$2;

.field final synthetic val$currenturl_tmp:Ljava/lang/String;

.field final synthetic val$murl_tmp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/VODplayer$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VODplayer$2;

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/gemini/play/VODplayer$2$1;->this$0:Lcom/gemini/play/VODplayer$2;

    iput-object p2, p0, Lcom/gemini/play/VODplayer$2$1;->val$currenturl_tmp:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/VODplayer$2$1;->val$murl_tmp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1207
    sget v0, Lcom/gemini/play/MGplayer;->httpdstart:I

    if-ne v0, v2, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->val$currenturl_tmp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->val$currenturl_tmp:Ljava/lang/String;

    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v1, "gp2p://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->this$0:Lcom/gemini/play/VODplayer$2;

    iget-object v0, v0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->this$0:Lcom/gemini/play/VODplayer$2;

    iget-object v0, v0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->this$0:Lcom/gemini/play/VODplayer$2;

    iget-object v0, v0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    iget-object v1, p0, Lcom/gemini/play/VODplayer$2$1;->val$murl_tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->startPlay(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->this$0:Lcom/gemini/play/VODplayer$2;

    iget-object v0, v0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->start()V

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->val$currenturl_tmp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->val$currenturl_tmp:Ljava/lang/String;

    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v1, "gp2p://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->mediareceivecount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->this$0:Lcom/gemini/play/VODplayer$2;

    iget-object v0, v0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->this$0:Lcom/gemini/play/VODplayer$2;

    iget-object v0, v0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->this$0:Lcom/gemini/play/VODplayer$2;

    iget-object v0, v0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    iget-object v1, p0, Lcom/gemini/play/VODplayer$2$1;->val$murl_tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->startPlay(Ljava/lang/String;)V

    .line 1215
    iget-object v0, p0, Lcom/gemini/play/VODplayer$2$1;->this$0:Lcom/gemini/play/VODplayer$2;

    iget-object v0, v0, Lcom/gemini/play/VODplayer$2;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->start()V

    goto :goto_0
.end method
