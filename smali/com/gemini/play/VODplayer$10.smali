.class final Lcom/gemini/play/VODplayer$10;
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
.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$seek:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/gemini/play/VODplayer$10;->val$url:Ljava/lang/String;

    iput p2, p0, Lcom/gemini/play/VODplayer$10;->val$seek:I

    iput-object p3, p0, Lcom/gemini/play/VODplayer$10;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x5c

    .line 1519
    iget-object v6, p0, Lcom/gemini/play/VODplayer$10;->val$url:Ljava/lang/String;

    const/16 v7, 0xa

    const/4 v8, 0x0

    iget v9, p0, Lcom/gemini/play/VODplayer$10;->val$seek:I

    div-int/lit16 v9, v9, 0x3e8

    invoke-static {v6, v7, v8, v9}, Lcom/gemini/play/MGplayer;->mediaplayerload(Ljava/lang/String;III)I

    move-result v2

    .line 1520
    .local v2, "gplayer_port":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#################### port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seek: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/gemini/play/VODplayer$10;->val$seek:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "####################"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1521
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1522
    .local v5, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1524
    .local v1, "data":Landroid/os/Bundle;
    sget v6, Lcom/gemini/play/MGplayer;->httpdstart:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1525
    const-string v6, "url"

    const-string v7, "http://127.0.0.1:23456/playlist.m3u8"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :goto_0
    const-string v6, "ourl"

    iget-object v7, p0, Lcom/gemini/play/VODplayer$10;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v6, "seek"

    iget v7, p0, Lcom/gemini/play/VODplayer$10;->val$seek:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1531
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1532
    iput v10, v5, Landroid/os/Message;->what:I

    .line 1533
    iget-object v6, p0, Lcom/gemini/play/VODplayer$10;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1534
    iget-object v6, p0, Lcom/gemini/play/VODplayer$10;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1536
    :cond_0
    iget-object v6, p0, Lcom/gemini/play/VODplayer$10;->val$url:Ljava/lang/String;

    const-string v7, "gp2p://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1538
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_1
    const/16 v6, 0x78

    if-ge v3, v6, :cond_1

    .line 1539
    iget-object v6, p0, Lcom/gemini/play/VODplayer$10;->val$url:Ljava/lang/String;

    sget-object v7, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1571
    .end local v3    # "ii":I
    :cond_1
    :goto_2
    return-void

    .line 1527
    :cond_2
    const-string v6, "url"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://127.0.0.1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    .restart local v3    # "ii":I
    :cond_3
    const/4 v0, 0x5

    .line 1543
    .local v0, "cachecount":I
    sget v6, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    if-ltz v6, :cond_4

    .line 1544
    sget v0, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    .line 1546
    :cond_4
    sget v6, Lcom/gemini/play/MGplayer;->httpdstart:I

    if-nez v6, :cond_5

    .line 1547
    sget v6, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    if-ltz v6, :cond_6

    .line 1548
    sget v0, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    .line 1553
    :cond_5
    :goto_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayercache()I

    move-result v4

    .line 1554
    .local v4, "mediaplayercache":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaplayercache:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1556
    const/4 v6, -0x1

    if-ne v4, v6, :cond_7

    .line 1557
    iget-object v6, p0, Lcom/gemini/play/VODplayer$10;->val$pHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1550
    .end local v4    # "mediaplayercache":I
    :cond_6
    const/16 v0, 0xa

    goto :goto_3

    .line 1560
    .restart local v4    # "mediaplayercache":I
    :cond_7
    if-ltz v4, :cond_8

    if-lt v4, v0, :cond_8

    .line 1562
    iget-object v6, p0, Lcom/gemini/play/VODplayer$10;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1566
    :cond_8
    const/16 v6, 0x1f4

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 1538
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1569
    .end local v0    # "cachecount":I
    .end local v3    # "ii":I
    .end local v4    # "mediaplayercache":I
    :cond_9
    iget-object v6, p0, Lcom/gemini/play/VODplayer$10;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
