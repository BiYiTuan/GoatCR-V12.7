.class Lcom/gemini/play/MGplayer$12$1;
.super Ljava/lang/Thread;
.source "MGplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer$12;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MGplayer$12;


# direct methods
.method constructor <init>(Lcom/gemini/play/MGplayer$12;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MGplayer$12;

    .prologue
    .line 2882
    iput-object p1, p0, Lcom/gemini/play/MGplayer$12$1;->this$0:Lcom/gemini/play/MGplayer$12;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    .line 2884
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quanxing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2885
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 2886
    sget-wide v2, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/32 v4, 0x8954400

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 2887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gemini/play/MGplayer;->admindir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/authenticate_key.php?mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cpuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&state=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/gemini/play/MGplayer;->get_key_value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 2893
    .end local v0    # "ii":I
    :cond_0
    return-void

    .line 2890
    .restart local v0    # "ii":I
    :cond_1
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 2885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
