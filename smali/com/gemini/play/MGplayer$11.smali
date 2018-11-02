.class final Lcom/gemini/play/MGplayer$11;
.super Ljava/lang/Thread;
.source "MGplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->Thread_Custom_Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2840
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2842
    const-string v0, ""

    .line 2843
    .local v0, "check":Ljava/lang/String;
    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->custom_init(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2845
    const-string v2, "NO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 2846
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2847
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x59

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2848
    sget-object v2, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2858
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2860
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v2

    const-string v3, "coolsee"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2861
    invoke-static {}, Lcom/gemini/play/MGplayer;->getLocalKey()Ljava/lang/String;

    .line 2863
    :cond_0
    return-void

    .line 2849
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const-string v2, "NOOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 2850
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2851
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x57

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2852
    sget-object v2, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2854
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2855
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x58

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2856
    sget-object v2, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
