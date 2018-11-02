.class final Lcom/gemini/play/MGplayer$8;
.super Ljava/lang/Object;
.source "MGplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->runTimePRC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$timeHander:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2424
    iput-object p1, p0, Lcom/gemini/play/MGplayer$8;->val$timeHander:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xea60

    const-wide/16 v6, 0x3e8

    .line 2426
    sget-wide v2, Lcom/gemini/play/MGplayer;->seconds_prc:J

    add-long/2addr v2, v8

    sput-wide v2, Lcom/gemini/play/MGplayer;->seconds_prc:J

    .line 2428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seconds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/gemini/play/MGplayer;->seconds_prc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endtime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/gemini/play/MGplayer;->endtime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/gemini/play/MGplayer;->endtime:J

    sget-wide v4, Lcom/gemini/play/MGplayer;->seconds_prc:J

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2429
    sget-wide v2, Lcom/gemini/play/MGplayer;->endtime:J

    const-wide/32 v4, 0x55d4a800

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    sget-wide v2, Lcom/gemini/play/MGplayer;->seconds_prc:J

    div-long/2addr v2, v6

    sget-wide v4, Lcom/gemini/play/MGplayer;->endtime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 2430
    sget-object v1, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2431
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2432
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2433
    sget-object v1, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2435
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 2436
    invoke-static {}, Lcom/gemini/play/MGplayer;->exit_app()V

    .line 2439
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/MGplayer$8;->val$timeHander:Landroid/os/Handler;

    invoke-virtual {v1, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2441
    return-void
.end method
