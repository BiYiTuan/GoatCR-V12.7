.class final Lcom/gemini/custom/chuangshi$3;
.super Ljava/lang/Thread;
.source "chuangshi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/chuangshi;->chuangshi_send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lcom/gemini/custom/UdpClient;


# direct methods
.method constructor <init>(Lcom/gemini/custom/UdpClient;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/gemini/custom/chuangshi$3;->val$client:Lcom/gemini/custom/UdpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chuangshi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 139
    iget-object v0, p0, Lcom/gemini/custom/chuangshi$3;->val$client:Lcom/gemini/custom/UdpClient;

    const-string v1, "so.iptvcs2.com"

    invoke-virtual {v0, v1}, Lcom/gemini/custom/UdpClient;->send(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chuangshi-v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 141
    iget-object v0, p0, Lcom/gemini/custom/chuangshi$3;->val$client:Lcom/gemini/custom/UdpClient;

    const-string v1, "so2.iptvcs2.com"

    invoke-virtual {v0, v1}, Lcom/gemini/custom/UdpClient;->send(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chuangshivgo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/gemini/custom/chuangshi$3;->val$client:Lcom/gemini/custom/UdpClient;

    const-string v1, "so.gohdtv.info"

    invoke-virtual {v0, v1}, Lcom/gemini/custom/UdpClient;->send(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
