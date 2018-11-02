.class public Lcom/gemini/custom/custom;
.super Ljava/lang/Object;
.source "custom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chaoyang_start()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lcom/gemini/custom/chaoyang;->http_send()V

    .line 36
    return-void
.end method

.method public static chuangshi_start()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/gemini/custom/chuangshi;->Thread_Chuangshi_Init()V

    .line 31
    return-void
.end method

.method public static goat_start()V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Lcom/gemini/custom/goat;->start()V

    .line 67
    return-void
.end method

.method public static huanqiu_start()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Lcom/gemini/custom/huanqiu;->init()V

    .line 27
    return-void
.end method

.method public static jjm_send()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/gemini/custom/jjm;->send_checkip()V

    .line 22
    return-void
.end method

.method public static lookiptv_start()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/gemini/custom/lookiptv;->lookiptv_start()V

    .line 57
    return-void
.end method

.method public static newlive_start()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/gemini/custom/newlive;->http_send()V

    .line 41
    return-void
.end method

.method public static panda_start()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/gemini/custom/panda;->start()V

    .line 62
    return-void
.end method

.method public static spain1_start()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/gemini/custom/spain1;->start()V

    .line 47
    return-void
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/gemini/custom/custom$1;

    invoke-direct {v0}, Lcom/gemini/custom/custom$1;-><init>()V

    .line 15
    invoke-virtual {v0}, Lcom/gemini/custom/custom$1;->start()V

    .line 17
    return-void
.end method

.method public static szysx_start(Landroid/content/Context;)V
    .locals 0
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/gemini/custom/szysx;->start(Landroid/content/Context;)V

    .line 52
    return-void
.end method
