.class final Lcom/gemini/play/MGplayer$14;
.super Ljava/lang/Thread;
.source "MGplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->scroll_every_init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3371
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 3374
    :goto_0
    sget-object v12, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v12}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v0

    .line 3375
    .local v0, "cpuid":Ljava/lang/String;
    sget-object v12, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v12}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v7

    .line 3377
    .local v7, "mac":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v13}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/admin/scroll_every_get.php?cpuid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&mac="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3378
    .local v10, "text":Ljava/lang/String;
    const-string v12, "geminiscroll"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3380
    .local v11, "texts":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x4

    if-lt v12, v13, :cond_2

    .line 3381
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3382
    .local v1, "every_date":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 3383
    .local v6, "every_txt":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3384
    .local v5, "every_time":I
    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3385
    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3387
    :cond_0
    const/4 v12, 0x3

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3388
    .local v4, "every_now":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 3389
    .local v2, "date":J
    const-wide/16 v8, 0x0

    .line 3391
    .local v8, "now":J
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 3392
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->fromDateStringToLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3393
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->fromDateStringToLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3400
    :cond_1
    cmp-long v12, v8, v2

    if-lez v12, :cond_2

    sget-object v12, Lcom/gemini/play/MGplayer;->scroll_every_date:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3401
    const-string v12, "====start scroll every===="

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3402
    sput-object v1, Lcom/gemini/play/MGplayer;->scroll_every_date:Ljava/lang/String;

    .line 3403
    sget-object v12, Lcom/gemini/play/MGplayer;->scroll_iface:Lcom/gemini/play/ScrollViewInterface;

    if-eqz v12, :cond_2

    .line 3404
    sget-object v12, Lcom/gemini/play/MGplayer;->scroll_iface:Lcom/gemini/play/ScrollViewInterface;

    const/4 v13, 0x0

    invoke-interface {v12, v13, v6, v5}, Lcom/gemini/play/ScrollViewInterface;->callback(ILjava/lang/String;I)V

    .line 3408
    .end local v1    # "every_date":Ljava/lang/String;
    .end local v2    # "date":J
    .end local v4    # "every_now":Ljava/lang/String;
    .end local v5    # "every_time":I
    .end local v6    # "every_txt":Ljava/lang/String;
    .end local v8    # "now":J
    :cond_2
    const/16 v12, 0x2710

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->sleep(I)V

    goto/16 :goto_0
.end method
