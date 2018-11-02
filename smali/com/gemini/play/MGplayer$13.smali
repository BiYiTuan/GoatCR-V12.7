.class final Lcom/gemini/play/MGplayer$13;
.super Ljava/lang/Thread;
.source "MGplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->video_every_init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3351
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3354
    :goto_0
    sget-object v3, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v3}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v0

    .line 3355
    .local v0, "cpuid":Ljava/lang/String;
    sget-object v3, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v3}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v1

    .line 3356
    .local v1, "mac":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/admin/control_get.php?cpu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&mac="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3357
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lcom/gemini/play/MGplayer;->video_iface:Lcom/gemini/play/ControlVideoInterface;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_1

    .line 3358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_every_init:url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3359
    sget-object v3, Lcom/gemini/play/MGplayer;->video_iface:Lcom/gemini/play/ControlVideoInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/gemini/play/ControlVideoInterface;->callback(ILjava/lang/String;)V

    .line 3364
    :cond_0
    :goto_1
    const/16 v3, 0x2710

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->sleep(I)V

    goto :goto_0

    .line 3360
    :cond_1
    sget-object v3, Lcom/gemini/play/MGplayer;->video_iface:Lcom/gemini/play/ControlVideoInterface;

    if-eqz v3, :cond_0

    .line 3361
    sget-object v3, Lcom/gemini/play/MGplayer;->video_iface:Lcom/gemini/play/ControlVideoInterface;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/gemini/play/ControlVideoInterface;->callback(ILjava/lang/String;)V

    goto :goto_1
.end method
