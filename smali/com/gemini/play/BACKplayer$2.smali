.class final Lcom/gemini/play/BACKplayer$2;
.super Landroid/os/Handler;
.source "BACKplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BACKplayer;->playVideoForHard(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$mVideoView:Lcom/gemini/play/VideoView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/gemini/play/VideoView;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/gemini/play/BACKplayer$2;->val$_this:Landroid/content/Context;

    iput-object p2, p0, Lcom/gemini/play/BACKplayer$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/BACKplayer$2;->val$mVideoView:Lcom/gemini/play/VideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 828
    const/4 v1, 0x0

    .line 829
    .local v1, "murl":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 856
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 858
    iget-object v4, p0, Lcom/gemini/play/BACKplayer$2;->val$mVideoView:Lcom/gemini/play/VideoView;

    invoke-virtual {v4, v1}, Lcom/gemini/play/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 859
    sget-object v4, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    const-string v5, "gp2p://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v4

    if-nez v4, :cond_0

    .line 860
    move-object v2, v1

    .line 861
    .local v2, "murl_tmp":Ljava/lang/String;
    sget-object v0, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    .line 862
    .local v0, "currenturl_tmp":Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/gemini/play/BACKplayer$2$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/gemini/play/BACKplayer$2$1;-><init>(Lcom/gemini/play/BACKplayer$2;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 882
    .end local v0    # "currenturl_tmp":Ljava/lang/String;
    .end local v2    # "murl_tmp":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/gemini/play/BACKplayer$2;->val$id:Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/BACKplayer;->access$100(Ljava/lang/String;)V

    .line 883
    return-void

    .line 833
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/gemini/play/BACKplayer$2;->val$_this:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/gemini/play/BACKplayer;->access$000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    goto :goto_0

    .line 840
    .end local v3    # "url":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    goto :goto_0

    .line 852
    :pswitch_3
    iget-object v4, p0, Lcom/gemini/play/BACKplayer$2;->val$id:Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/BACKplayer;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
