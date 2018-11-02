.class Lcom/gemini/custom/chuangshi$1$1;
.super Ljava/lang/Thread;
.source "chuangshi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/chuangshi$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/custom/chuangshi$1;


# direct methods
.method constructor <init>(Lcom/gemini/custom/chuangshi$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/custom/chuangshi$1;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/gemini/custom/chuangshi$1$1;->this$0:Lcom/gemini/custom/chuangshi$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 46
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chuangshi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chuangshi-v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 47
    :cond_0
    const-string v0, "http://an.iptvcs2.com/sofs.php"

    invoke-static {v0, v3}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/custom/chuangshi;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chuangshivgo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 49
    const-string v0, "http://an.gohdtv.info/sofs.php"

    invoke-static {v0, v3}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/custom/chuangshi;->access$002(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
