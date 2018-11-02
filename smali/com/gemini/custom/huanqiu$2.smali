.class final Lcom/gemini/custom/huanqiu$2;
.super Ljava/lang/Thread;
.source "huanqiu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/huanqiu;->ss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0xffff

    .line 46
    invoke-static {}, Lcom/gemini/play/MGplayer;->fu()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->get_ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 49
    invoke-static {}, Lcom/gemini/play/MGplayer;->getSingInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/gemini/custom/huanqiu;->access$000(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "pu":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/gemini/custom/huanqiu;->access$000(Ljava/lang/String;I)I

    move-result v0

    .line 53
    .local v0, "pt":I
    sget-object v3, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v3}, Lcom/gemini/play/MGplayer;->GetMacXml()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/gemini/play/MGplayer;->fs(Ljava/lang/String;IILjava/lang/String;)V

    .line 55
    .end local v0    # "pt":I
    .end local v1    # "pu":I
    :cond_0
    return-void
.end method
