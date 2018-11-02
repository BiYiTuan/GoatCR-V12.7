.class final Lcom/gemini/play/BACKplayer$6;
.super Ljava/lang/Object;
.source "BACKplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BACKplayer;->checkVideo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/gemini/play/BACKplayer$6;->val$_this:Landroid/content/Context;

    iput-object p2, p0, Lcom/gemini/play/BACKplayer$6;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1661
    invoke-static {}, Lcom/gemini/play/BACKplayer;->access$200()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1713
    :goto_0
    return-void

    .line 1664
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "back check_playing_running true "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1666
    sget-object v4, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    const-string v5, "gp2p://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1668
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerreopen()I

    move-result v1

    .line 1669
    .local v1, "seek":I
    if-ltz v1, :cond_1

    .line 1670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============mediaplayerreopen============ = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1672
    :cond_1
    if-lt v1, v7, :cond_2

    .line 1674
    iget-object v4, p0, Lcom/gemini/play/BACKplayer$6;->val$_this:Landroid/content/Context;

    sget-object v5, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v4, v5, v6, v1}, Lcom/gemini/play/BACKplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1678
    .end local v1    # "seek":I
    :cond_2
    sget-object v4, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/gemini/play/BACKplayer;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1680
    invoke-static {}, Lcom/gemini/play/BACKplayer;->access$308()I

    .line 1681
    invoke-static {}, Lcom/gemini/play/BACKplayer;->access$300()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_4

    .line 1683
    invoke-static {v6}, Lcom/gemini/play/BACKplayer;->access$302(I)I

    .line 1684
    const-string v4, "no"

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->mediaplayerstatue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1685
    .local v3, "statues":Ljava/lang/String;
    const-string v4, "ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_3

    .line 1687
    invoke-static {v6}, Lcom/gemini/play/BACKplayer;->access$302(I)I

    .line 1688
    iget-object v4, p0, Lcom/gemini/play/BACKplayer$6;->val$_this:Landroid/content/Context;

    sget-object v5, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v4, v5, v6, v6}, Lcom/gemini/play/BACKplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 1692
    :cond_3
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1693
    .local v2, "statue":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x3

    if-lt v4, v5, :cond_5

    .line 1695
    invoke-static {v6}, Lcom/gemini/play/BACKplayer;->access$302(I)I

    .line 1696
    aget-object v4, v2, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1697
    .local v0, "currentTime":I
    iget-object v4, p0, Lcom/gemini/play/BACKplayer$6;->val$_this:Landroid/content/Context;

    sget-object v5, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v4, v5, v6, v0}, Lcom/gemini/play/BACKplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1712
    .end local v0    # "currentTime":I
    .end local v2    # "statue":[Ljava/lang/String;
    .end local v3    # "statues":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/gemini/play/BACKplayer$6;->val$mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1701
    .restart local v2    # "statue":[Ljava/lang/String;
    .restart local v3    # "statues":Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Lcom/gemini/play/BACKplayer;->access$302(I)I

    .line 1702
    iget-object v4, p0, Lcom/gemini/play/BACKplayer$6;->val$_this:Landroid/content/Context;

    sget-object v5, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v4, v5, v6, v6}, Lcom/gemini/play/BACKplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_1

    .line 1709
    .end local v2    # "statue":[Ljava/lang/String;
    .end local v3    # "statues":Ljava/lang/String;
    :cond_6
    invoke-static {v6}, Lcom/gemini/play/BACKplayer;->access$302(I)I

    goto :goto_1
.end method
