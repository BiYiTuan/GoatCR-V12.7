.class final Lcom/gemini/play/LIVEplayer$5;
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
.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

.field final synthetic val$playHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;Lorg/videolan/vlc/VlcVideoView;)V
    .locals 0

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$5;->val$playHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$5;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LIVEplayer$5;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1420
    const/4 v2, 0x0

    .line 1421
    .local v2, "murl":Ljava/lang/String;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1449
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video play:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1458
    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$5;->val$mVideoView:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v7, v2}, Lorg/videolan/vlc/VlcVideoView;->startPlay(Ljava/lang/String;)V

    .line 1461
    move-object v3, v2

    .line 1462
    .local v3, "murl_tmp":Ljava/lang/String;
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    .line 1463
    .local v0, "currenturl_tmp":Ljava/lang/String;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1464
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v7, Lcom/gemini/play/LIVEplayer$5$1;

    invoke-direct {v7, p0, v0, v3, v1}, Lcom/gemini/play/LIVEplayer$5$1;-><init>(Lcom/gemini/play/LIVEplayer$5;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1477
    .end local v0    # "currenturl_tmp":Ljava/lang/String;
    .end local v1    # "mHandler":Landroid/os/Handler;
    .end local v3    # "murl_tmp":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$5;->val$id:Ljava/lang/String;

    sput-object v7, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 1478
    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$5;->val$id:Ljava/lang/String;

    invoke-static {v7}, Lcom/gemini/play/LIVEplayer;->access$000(Ljava/lang/String;)V

    .line 1480
    :goto_1
    return-void

    .line 1423
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1424
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "password"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1425
    .local v5, "password":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "needrestart"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1426
    .local v4, "needrestart":I
    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$5;->val$playHandler:Landroid/os/Handler;

    invoke-static {v6, v5, v4, v7}, Lcom/gemini/play/LIVEplayer;->access$100(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)Ljava/lang/String;

    move-result-object v2

    .line 1427
    goto :goto_0

    .line 1431
    .end local v4    # "needrestart":I
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1432
    goto :goto_0

    .line 1441
    :pswitch_3
    sget-object v7, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v9, 0x7f0b0050

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1444
    :pswitch_4
    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$5;->val$id:Ljava/lang/String;

    sput-object v7, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 1445
    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$5;->val$id:Ljava/lang/String;

    invoke-static {v7}, Lcom/gemini/play/LIVEplayer;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 1421
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
