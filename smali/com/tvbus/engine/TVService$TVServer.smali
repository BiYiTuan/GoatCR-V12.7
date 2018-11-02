.class Lcom/tvbus/engine/TVService$TVServer;
.super Ljava/lang/Object;
.source "TVService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbus/engine/TVService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TVServer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TVBusServer"


# instance fields
.field final synthetic this$0:Lcom/tvbus/engine/TVService;

.field tvcore:Lcom/tvbus/engine/TVCore;


# direct methods
.method private constructor <init>(Lcom/tvbus/engine/TVService;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tvbus/engine/TVService$TVServer;->this$0:Lcom/tvbus/engine/TVService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/tvbus/engine/TVCore;->getInstance()Lcom/tvbus/engine/TVCore;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbus/engine/TVService;Lcom/tvbus/engine/TVService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbus/engine/TVService;
    .param p2, "x1"    # Lcom/tvbus/engine/TVService$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/tvbus/engine/TVService$TVServer;-><init>(Lcom/tvbus/engine/TVService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jingjimu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jingjimudev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    const/16 v2, 0x22c6

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setPlayPort(I)V

    .line 61
    iget-object v1, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    invoke-virtual {v1, v3}, Lcom/tvbus/engine/TVCore;->setServPort(I)V

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    invoke-virtual {v1, v4}, Lcom/tvbus/engine/TVCore;->setRunningMode(I)V

    .line 71
    iget-object v1, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    iget-object v2, p0, Lcom/tvbus/engine/TVService$TVServer;->this$0:Lcom/tvbus/engine/TVService;

    invoke-virtual {v2}, Lcom/tvbus/engine/TVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->init(Landroid/content/Context;)I

    move-result v0

    .line 72
    .local v0, "retv":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TVService TVCore init result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 73
    sput-boolean v4, Lcom/tvbus/engine/TVService;->bInited:Z

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TVService desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    invoke-virtual {v2}, Lcom/tvbus/engine/TVCore;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 76
    if-nez v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    invoke-virtual {v1}, Lcom/tvbus/engine/TVCore;->run()I

    move-result v0

    .line 79
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TVService TVCore exited thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 81
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 82
    sput-boolean v3, Lcom/gemini/play/MGplayer;->StartTVBusOK:Z

    .line 85
    :goto_1
    return-void

    .line 65
    .end local v0    # "retv":I
    :cond_2
    iget-object v1, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    const/16 v2, 0x49d6

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setPlayPort(I)V

    .line 66
    iget-object v1, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    invoke-virtual {v1, v3}, Lcom/tvbus/engine/TVCore;->setServPort(I)V

    goto :goto_0

    .line 84
    .restart local v0    # "retv":I
    :cond_3
    sput-boolean v4, Lcom/gemini/play/MGplayer;->StartTVBusOK:Z

    goto :goto_1
.end method
