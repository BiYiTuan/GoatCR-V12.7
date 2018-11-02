.class Lcom/gemini/play/LIVEplayer$5$1;
.super Ljava/lang/Object;
.source "LIVEplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LIVEplayer$5;

.field final synthetic val$currenturl_tmp:Ljava/lang/String;

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$murl_tmp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/LIVEplayer$5;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LIVEplayer$5;

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$5$1;->this$0:Lcom/gemini/play/LIVEplayer$5;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$5$1;->val$currenturl_tmp:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LIVEplayer$5$1;->val$murl_tmp:Ljava/lang/String;

    iput-object p4, p0, Lcom/gemini/play/LIVEplayer$5$1;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/gemini/play/LIVEplayer$5$1;->val$currenturl_tmp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/LIVEplayer$5$1;->val$currenturl_tmp:Ljava/lang/String;

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v1, "gp2p://"

    .line 1467
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/LIVEplayer$5$1;->this$0:Lcom/gemini/play/LIVEplayer$5;

    iget-object v0, v0, Lcom/gemini/play/LIVEplayer$5;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/LIVEplayer$5$1;->this$0:Lcom/gemini/play/LIVEplayer$5;

    iget-object v0, v0, Lcom/gemini/play/LIVEplayer$5;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    .line 1468
    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vlc videoview startPlay is false "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gemini/play/MGplayer;->mediareceivecount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/gemini/play/LIVEplayer$5$1;->this$0:Lcom/gemini/play/LIVEplayer$5;

    iget-object v0, v0, Lcom/gemini/play/LIVEplayer$5;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    iget-object v1, p0, Lcom/gemini/play/LIVEplayer$5$1;->val$murl_tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->startPlay(Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/gemini/play/LIVEplayer$5$1;->val$mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1473
    :cond_0
    return-void
.end method
