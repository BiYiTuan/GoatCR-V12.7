.class final Lcom/gemini/play/LIVEplayer$4;
.super Landroid/os/Handler;
.source "LIVEplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mVideoView:Lorg/videolan/vlc/VlcVideoView;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/VlcVideoView;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$4;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1400
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1415
    :goto_0
    return-void

    .line 1402
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "murl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1403
    .local v1, "murl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1405
    .local v0, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1406
    iget-object v2, p0, Lcom/gemini/play/LIVEplayer$4;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2, v1}, Lorg/videolan/vlc/VlcVideoView;->startPlay(Ljava/lang/String;)V

    .line 1410
    :cond_0
    sput-object v0, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 1411
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
