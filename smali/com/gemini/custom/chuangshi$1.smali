.class final Lcom/gemini/custom/chuangshi$1;
.super Ljava/lang/Object;
.source "chuangshi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/chuangshi;->Thread_Chuangshi_Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$Chuangshisofs_Hander:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/gemini/custom/chuangshi$1;->val$Chuangshisofs_Hander:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 43
    const-string v0, "Thread_Chuangshi_Init 1"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/gemini/custom/chuangshi$1$1;

    invoke-direct {v0, p0}, Lcom/gemini/custom/chuangshi$1$1;-><init>(Lcom/gemini/custom/chuangshi$1;)V

    .line 50
    invoke-virtual {v0}, Lcom/gemini/custom/chuangshi$1$1;->start()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread_Chuangshi_Init 2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread_Chuangshi_Init 3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$100()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 58
    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gemini/custom/chuangshi;->access$102(I)I

    .line 59
    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$100()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$100()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$100()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$100()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread_Chuangshi_Init 4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/gemini/custom/chuangshi;->chuangshi_send()V

    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gemini/custom/chuangshi$1;->val$Chuangshisofs_Hander:Landroid/os/Handler;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void

    .line 66
    :cond_2
    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gemini/custom/chuangshi;->access$102(I)I

    goto :goto_0

    .line 70
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread_Chuangshi_Init 5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gemini/custom/chuangshi;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/gemini/custom/chuangshi;->chuangshi_send()V

    goto :goto_0
.end method
