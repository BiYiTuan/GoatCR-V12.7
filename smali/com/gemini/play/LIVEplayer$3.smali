.class final Lcom/gemini/play/LIVEplayer$3;
.super Landroid/os/Handler;
.source "LIVEplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$mVideoView:Lio/vov/vitamio/widget/VideoView;

.field final synthetic val$playHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;Lio/vov/vitamio/widget/VideoView;)V
    .locals 0

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$3;->val$playHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$3;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LIVEplayer$3;->val$mVideoView:Lio/vov/vitamio/widget/VideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1294
    const/4 v0, 0x0

    .line 1295
    .local v0, "murl":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1323
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video play:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1325
    iget-object v4, p0, Lcom/gemini/play/LIVEplayer$3;->val$mVideoView:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v4}, Lio/vov/vitamio/widget/VideoView;->pause()V

    .line 1326
    iget-object v4, p0, Lcom/gemini/play/LIVEplayer$3;->val$mVideoView:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v4, v0}, Lio/vov/vitamio/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1327
    iget-object v4, p0, Lcom/gemini/play/LIVEplayer$3;->val$mVideoView:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v4}, Lio/vov/vitamio/widget/VideoView;->start()V

    .line 1330
    :cond_0
    iget-object v4, p0, Lcom/gemini/play/LIVEplayer$3;->val$id:Ljava/lang/String;

    sput-object v4, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 1331
    iget-object v4, p0, Lcom/gemini/play/LIVEplayer$3;->val$id:Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/LIVEplayer;->access$000(Ljava/lang/String;)V

    .line 1333
    :goto_1
    return-void

    .line 1297
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1298
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "password"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "needrestart"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1300
    .local v1, "needrestart":I
    iget-object v4, p0, Lcom/gemini/play/LIVEplayer$3;->val$playHandler:Landroid/os/Handler;

    invoke-static {v3, v2, v1, v4}, Lcom/gemini/play/LIVEplayer;->access$100(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    .line 1301
    goto :goto_0

    .line 1305
    .end local v1    # "needrestart":I
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1306
    goto :goto_0

    .line 1315
    :pswitch_3
    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v6, 0x7f0b0050

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1318
    :pswitch_4
    iget-object v4, p0, Lcom/gemini/play/LIVEplayer$3;->val$id:Ljava/lang/String;

    sput-object v4, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 1319
    iget-object v4, p0, Lcom/gemini/play/LIVEplayer$3;->val$id:Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/LIVEplayer;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
