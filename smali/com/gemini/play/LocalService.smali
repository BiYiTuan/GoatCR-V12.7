.class public Lcom/gemini/play/LocalService;
.super Landroid/app/Service;
.source "LocalService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    const/4 v0, 0x1

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/LocalService;->startForeground(ILandroid/app/Notification;)V

    .line 23
    invoke-static {}, Lcom/gemini/play/MGplayer;->timeView()V

    .line 27
    const-string v0, "Server onCreate"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gemini/play/LocalService;->stopForeground(Z)V

    .line 44
    const-string v0, "Server onDestroy"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 34
    const-string v0, "Server onStart"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 37
    return-void
.end method
