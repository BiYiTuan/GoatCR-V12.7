.class final Lcom/gemini/custom/huanqiu$1;
.super Ljava/lang/Thread;
.source "huanqiu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/huanqiu;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0xffff

    .line 18
    invoke-static {}, Lcom/gemini/play/MGplayer;->fu()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "addr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "huanqiu addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 20
    invoke-static {v0}, Lcom/gemini/play/MGplayer;->get_ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "url":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 24
    invoke-static {}, Lcom/gemini/play/MGplayer;->getSingInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/gemini/custom/huanqiu;->access$000(Ljava/lang/String;I)I

    move-result v2

    .line 25
    .local v2, "pu":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/gemini/custom/huanqiu;->access$000(Ljava/lang/String;I)I

    move-result v1

    .line 29
    .local v1, "pt":I
    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->GetMacXml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v1, v4}, Lcom/gemini/play/MGplayer;->fs(Ljava/lang/String;IILjava/lang/String;)V

    .line 31
    :goto_0
    invoke-static {}, Lcom/gemini/custom/huanqiu;->access$100()Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    const v4, 0x1b7740

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 34
    const-string v4, "huanqiu s2"

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 35
    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->GetMacXml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v1, v4}, Lcom/gemini/play/MGplayer;->fs(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v1    # "pt":I
    .end local v2    # "pu":I
    :cond_0
    return-void
.end method
