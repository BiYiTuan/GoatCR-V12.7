.class Lcom/gemini/play/VodPlayerVideoActivity$6;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerVideoActivity;->runThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerVideoActivity;

.field final synthetic val$runHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->val$runHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 306
    sget-object v4, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v5, "p2p://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HIK3V2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HI3716M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget v4, Lcom/gemini/play/VODplayer;->p2pCurrentDuration:I

    if-gtz v4, :cond_1

    .line 307
    new-instance v4, Lcom/gemini/play/VodPlayerVideoActivity$6$1;

    invoke-direct {v4, p0}, Lcom/gemini/play/VodPlayerVideoActivity$6$1;-><init>(Lcom/gemini/play/VodPlayerVideoActivity$6;)V

    .line 311
    invoke-virtual {v4}, Lcom/gemini/play/VodPlayerVideoActivity$6$1;->start()V

    .line 314
    :cond_1
    invoke-static {}, Lcom/gemini/play/VODplayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    sget-object v4, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/VODplayer;->getProgress(Ljava/lang/String;)I

    move-result v0

    .line 317
    .local v0, "position":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#################### vod position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#################### vod position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerVideoActivity;->access$400(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerVideoActivity;->access$500(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerVideoActivity;->access$600(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 320
    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerVideoActivity;->access$400(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerVideoActivity;->access$500(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerVideoActivity;->access$600(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerVideoActivity;->access$700(Lcom/gemini/play/VodPlayerVideoActivity;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 321
    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerVideoActivity;->access$800(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/PositionVodDB;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerVideoActivity;->access$500(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v6}, Lcom/gemini/play/VodPlayerVideoActivity;->access$400(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v7}, Lcom/gemini/play/VodPlayerVideoActivity;->access$600(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/gemini/play/PositionVodDB;->inserDataNoreRepeat(IIII)J

    .line 329
    .end local v0    # "position":I
    :cond_2
    sget-object v4, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/VODplayer;->getProgress(Ljava/lang/String;)I

    move-result v1

    .line 330
    .local v1, "progress":I
    sget-object v4, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/VODplayer;->getTotal(Ljava/lang/String;)I

    move-result v2

    .line 331
    .local v2, "total":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#################### progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 332
    if-lez v1, :cond_3

    const/16 v4, 0x3e8

    if-le v2, v4, :cond_3

    add-int/lit16 v4, v2, -0x1770

    if-lt v1, v4, :cond_3

    add-int/lit16 v4, v2, 0x2710

    if-gt v1, v4, :cond_3

    .line 334
    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v6}, Lcom/gemini/play/VodPlayerVideoActivity;->access$900(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodListStatus;

    move-result-object v6

    iget-object v6, v6, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    iget-object v7, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v7}, Lcom/gemini/play/VodPlayerVideoActivity;->access$600(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1000(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1100(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "video_url":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 337
    sput-object v3, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    .line 338
    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v6, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/gemini/play/VODplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .end local v3    # "video_url":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1208(Lcom/gemini/play/VodPlayerVideoActivity;)I

    .line 348
    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->val$runHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    return-void

    .line 343
    .restart local v3    # "video_url":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v6, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/gemini/play/VODplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
