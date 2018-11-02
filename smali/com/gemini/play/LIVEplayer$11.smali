.class final Lcom/gemini/play/LIVEplayer$11;
.super Ljava/lang/Object;
.source "LIVEplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$11;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$11;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1798
    sget v1, Lcom/gemini/play/MGplayer;->start_tvbus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1799
    sget-object v1, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    iget-object v2, p0, Lcom/gemini/play/LIVEplayer$11;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/gemini/play/LIVEplayer$11;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/tvbus/engine/TvbusApi;->startChannel(Ljava/lang/String;Landroid/os/Handler;)V

    .line 1800
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1801
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x61

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1802
    iget-object v1, p0, Lcom/gemini/play/LIVEplayer$11;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1804
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
