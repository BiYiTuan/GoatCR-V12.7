.class final Lcom/gemini/play/BACKplayer$1;
.super Landroid/os/Handler;
.source "BACKplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BACKplayer;->playVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$mVideoView:Lorg/videolan/vlc/VlcVideoView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/gemini/play/BACKplayer$1;->val$_this:Landroid/content/Context;

    iput-object p2, p0, Lcom/gemini/play/BACKplayer$1;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    iput-object p3, p0, Lcom/gemini/play/BACKplayer$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "murl":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 762
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 764
    iget-object v2, p0, Lcom/gemini/play/BACKplayer$1;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2, v0}, Lorg/videolan/vlc/VlcVideoView;->startPlay(Ljava/lang/String;)V

    .line 767
    iget-object v2, p0, Lcom/gemini/play/BACKplayer$1;->val$id:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/BACKplayer;->access$100(Ljava/lang/String;)V

    .line 769
    :cond_0
    return-void

    .line 742
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/BACKplayer$1;->val$_this:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/gemini/play/BACKplayer;->access$000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    goto :goto_0

    .line 749
    .end local v1    # "url":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    goto :goto_0

    .line 738
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
