.class final Lcom/gemini/play/VODplayer$11;
.super Ljava/lang/Object;
.source "VODplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VODplayer;->playVideoMessage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$seek:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/gemini/play/VODplayer$11;->val$url:Ljava/lang/String;

    iput p2, p0, Lcom/gemini/play/VODplayer$11;->val$seek:I

    iput-object p3, p0, Lcom/gemini/play/VODplayer$11;->val$pHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/gemini/play/VODplayer$11;->val$_this:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x5c

    const/16 v10, 0x5e

    .line 1576
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v0

    .line 1578
    .local v0, "cpuinfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VODplayer$11;->val$url:Ljava/lang/String;

    .line 1580
    .local v3, "key_url2":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1581
    .local v2, "gplayer_port":I
    const/16 v7, 0xa

    const/4 v8, 0x0

    iget v9, p0, Lcom/gemini/play/VODplayer$11;->val$seek:I

    invoke-static {v3, v7, v8, v9}, Lcom/gemini/play/MGplayer;->mediaplayerload(Ljava/lang/String;III)I

    move-result v2

    .line 1583
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#################### port: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "####################"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1584
    if-gez v2, :cond_1

    .line 1585
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1586
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1587
    .local v4, "msg":Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->what:I

    .line 1588
    iget-object v7, p0, Lcom/gemini/play/VODplayer$11;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1589
    iget-object v7, p0, Lcom/gemini/play/VODplayer$11;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1590
    :cond_0
    iget-object v7, p0, Lcom/gemini/play/VODplayer$11;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1617
    .end local v4    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 1594
    :cond_1
    iget-object v7, p0, Lcom/gemini/play/VODplayer$11;->val$_this:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/gemini/play/VODplayer;->access$100(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1595
    .local v6, "murl":Ljava/lang/String;
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1596
    .local v5, "msg4":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1597
    .local v1, "data":Landroid/os/Bundle;
    const-string v7, "AML8726"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1598
    const-string v7, "url"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :goto_1
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1614
    iput v11, v5, Landroid/os/Message;->what:I

    .line 1615
    iget-object v7, p0, Lcom/gemini/play/VODplayer$11;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1616
    iget-object v7, p0, Lcom/gemini/play/VODplayer$11;->val$pHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1599
    :cond_2
    const-string v7, "HI3716M"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "HIK3V2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1600
    :cond_3
    iget-object v7, p0, Lcom/gemini/play/VODplayer$11;->val$url:Ljava/lang/String;

    const-string v8, "udp://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1601
    const-string v7, "url"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1603
    :cond_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v7

    const-string v8, "koreayh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1604
    const-string v7, "url"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1606
    :cond_5
    const-string v7, "url"

    const-string v8, "http://127.0.0.1:8084"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1608
    :cond_6
    const-string v7, "RK3128"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "S805"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1609
    :cond_7
    const-string v7, "url"

    const-string v8, "http://127.0.0.1:8084"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1611
    :cond_8
    const-string v7, "url"

    const-string v8, "http://127.0.0.1:8084"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
