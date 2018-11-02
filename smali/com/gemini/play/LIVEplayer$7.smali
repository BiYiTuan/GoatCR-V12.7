.class final Lcom/gemini/play/LIVEplayer$7;
.super Landroid/os/Handler;
.source "LIVEplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$playHandler:Landroid/os/Handler;

.field final synthetic val$videoViewH:Lcom/gemini/play/VideoView;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;Lcom/gemini/play/VideoView;)V
    .locals 0

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$7;->val$playHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$7;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LIVEplayer$7;->val$videoViewH:Lcom/gemini/play/VideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1570
    const/4 v1, 0x0

    .line 1571
    .local v1, "murl":Ljava/lang/String;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1599
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 1600
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "murl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1602
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$7;->val$videoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v6, v1}, Lcom/gemini/play/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1605
    sget-object v6, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v7, "gp2p://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v6

    if-nez v6, :cond_0

    .line 1606
    move-object v2, v1

    .line 1607
    .local v2, "murl_tmp":Ljava/lang/String;
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    .line 1608
    .local v0, "currenturl_tmp":Ljava/lang/String;
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/gemini/play/LIVEplayer$7$1;

    invoke-direct {v7, p0, v0, v2}, Lcom/gemini/play/LIVEplayer$7$1;-><init>(Lcom/gemini/play/LIVEplayer$7;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1628
    .end local v0    # "currenturl_tmp":Ljava/lang/String;
    .end local v2    # "murl_tmp":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$7;->val$id:Ljava/lang/String;

    sput-object v6, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 1629
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$7;->val$id:Ljava/lang/String;

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->access$000(Ljava/lang/String;)V

    .line 1631
    :goto_1
    return-void

    .line 1573
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1574
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "password"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1575
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "needrestart"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1576
    .local v3, "needrestart":I
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$7;->val$playHandler:Landroid/os/Handler;

    invoke-static {v5, v4, v3, v6}, Lcom/gemini/play/LIVEplayer;->access$100(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)Ljava/lang/String;

    move-result-object v1

    .line 1577
    goto :goto_0

    .line 1581
    .end local v3    # "needrestart":I
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1582
    goto :goto_0

    .line 1591
    :pswitch_3
    sget-object v6, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v8, 0x7f0b0050

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1594
    :pswitch_4
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$7;->val$id:Ljava/lang/String;

    sput-object v6, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 1595
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$7;->val$id:Ljava/lang/String;

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 1571
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
