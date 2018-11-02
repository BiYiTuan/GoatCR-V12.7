.class public Lcom/tvbus/engine/TVService;
.super Landroid/app/Service;
.source "TVService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbus/engine/TVService$TVServer;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TVBusService"

.field public static bInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tvbus/engine/TVService;->bInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string v0, "TVService onBind() executed"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 19
    const-string v2, "TVService onCreate() executed ++++++++++++!!!!!!!!!!!!!"

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/tvbus/engine/TVService$TVServer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/tvbus/engine/TVService$TVServer;-><init>(Lcom/tvbus/engine/TVService;Lcom/tvbus/engine/TVService$1;)V

    .line 22
    .local v0, "server":Lcom/tvbus/engine/TVService$TVServer;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    .local v1, "thread":Ljava/lang/Thread;
    const-string v2, "tvcore"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "TVService onDestroy() executed"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/tvbus/engine/TVCore;->getInstance()Lcom/tvbus/engine/TVCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tvbus/engine/TVCore;->quit()V

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 40
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 29
    const-string v0, "TVService onStartCommand() executed"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x2

    return v0
.end method
