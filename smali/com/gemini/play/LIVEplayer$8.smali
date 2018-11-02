.class final Lcom/gemini/play/LIVEplayer$8;
.super Landroid/os/Handler;
.source "LIVEplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideoForHard2(Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$videoViewH:Lcom/gemini/play/ExoPlayerView;


# direct methods
.method constructor <init>(Lcom/gemini/play/ExoPlayerView;)V
    .locals 0

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$8;->val$videoViewH:Lcom/gemini/play/ExoPlayerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1692
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1703
    :cond_0
    :goto_0
    return-void

    .line 1694
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "murl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    .local v0, "murl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video murl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1696
    if-eqz v0, :cond_0

    .line 1697
    iget-object v1, p0, Lcom/gemini/play/LIVEplayer$8;->val$videoViewH:Lcom/gemini/play/ExoPlayerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/gemini/play/ExoPlayerView;->setRendererContentType(I)V

    .line 1698
    iget-object v1, p0, Lcom/gemini/play/LIVEplayer$8;->val$videoViewH:Lcom/gemini/play/ExoPlayerView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gemini/play/ExoPlayerView;->setVideoUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
