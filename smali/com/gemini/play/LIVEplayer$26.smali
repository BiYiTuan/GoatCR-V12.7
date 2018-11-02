.class final Lcom/gemini/play/LIVEplayer$26;
.super Ljava/lang/Object;
.source "LIVEplayer.java"

# interfaces
.implements Lcom/nagasoft/player/UrlChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/LIVEplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlChanged(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "pHandler"    # Landroid/os/Handler;

    .prologue
    .line 3973
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3974
    .local v1, "msg4":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3975
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3977
    const/16 v2, 0x5c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3978
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3979
    return-void
.end method
