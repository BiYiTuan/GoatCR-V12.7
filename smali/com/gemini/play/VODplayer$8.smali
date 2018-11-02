.class final Lcom/gemini/play/VODplayer$8;
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
.field final synthetic val$gurl:Ljava/lang/String;

.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$seek:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/gemini/play/VODplayer$8;->val$gurl:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/VODplayer$8;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/gemini/play/VODplayer$8;->val$seek:I

    iput-object p4, p0, Lcom/gemini/play/VODplayer$8;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x7

    const/16 v9, 0x5b

    .line 1453
    iget-object v6, p0, Lcom/gemini/play/VODplayer$8;->val$gurl:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1454
    .local v5, "urls":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/admin/youku_get.php?url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1455
    .local v0, "cmd":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    const/4 v6, 0x5

    if-ge v2, v6, :cond_1

    .line 1456
    const/16 v6, 0x1388

    invoke-static {v0, v6}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1459
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-le v6, v7, :cond_4

    .line 1461
    iget-object v6, p0, Lcom/gemini/play/VODplayer$8;->val$url:Ljava/lang/String;

    const-string v7, "tudou"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v8, :cond_2

    .line 1462
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1463
    .local v3, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1464
    .local v1, "data":Landroid/os/Bundle;
    const-string v6, "url"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string v6, "ourl"

    iget-object v7, p0, Lcom/gemini/play/VODplayer$8;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    const-string v6, "seek"

    iget v7, p0, Lcom/gemini/play/VODplayer$8;->val$seek:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1467
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1468
    iput v9, v3, Landroid/os/Message;->what:I

    .line 1469
    iget-object v6, p0, Lcom/gemini/play/VODplayer$8;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1470
    iget-object v6, p0, Lcom/gemini/play/VODplayer$8;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1471
    :cond_0
    iget-object v6, p0, Lcom/gemini/play/VODplayer$8;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1496
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1473
    .restart local v4    # "path":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/gemini/play/VODplayer$8;->val$url:Ljava/lang/String;

    const-string v7, "youku"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v8, :cond_4

    .line 1474
    sput-object v4, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    .line 1476
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1477
    .restart local v3    # "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1478
    .restart local v1    # "data":Landroid/os/Bundle;
    const-string v6, "url"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://127.0.0.1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/gemini/play/MGplayer;->http_server_port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/playlist.m3u8"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string v6, "ourl"

    iget-object v7, p0, Lcom/gemini/play/VODplayer$8;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const-string v6, "seek"

    iget v7, p0, Lcom/gemini/play/VODplayer$8;->val$seek:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1481
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1482
    iput v9, v3, Landroid/os/Message;->what:I

    .line 1483
    iget-object v6, p0, Lcom/gemini/play/VODplayer$8;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1484
    iget-object v6, p0, Lcom/gemini/play/VODplayer$8;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1485
    :cond_3
    iget-object v6, p0, Lcom/gemini/play/VODplayer$8;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1455
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
