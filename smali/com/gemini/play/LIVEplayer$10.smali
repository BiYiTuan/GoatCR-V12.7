.class final Lcom/gemini/play/LIVEplayer$10;
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
    .line 1786
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$10;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$10;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1788
    sget-boolean v0, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1789
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    iget-object v1, p0, Lcom/gemini/play/LIVEplayer$10;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nagasoft/player/VJPlayer;->setURL(Ljava/lang/String;)V

    .line 1790
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    invoke-virtual {v0}, Lcom/nagasoft/player/VJPlayer;->start()Z

    .line 1791
    sget-object v0, Lcom/gemini/play/LIVEplayer;->vjms:Lcom/nagasoft/player/VJPlayer;

    iget-object v1, p0, Lcom/gemini/play/LIVEplayer$10;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/nagasoft/player/VJPlayer;->setHandler(Landroid/os/Handler;)V

    .line 1793
    :cond_0
    return-void
.end method
