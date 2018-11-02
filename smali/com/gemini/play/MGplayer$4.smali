.class final Lcom/gemini/play/MGplayer$4;
.super Ljava/lang/Object;
.source "MGplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->check_timeout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$time:I

.field final synthetic val$timeHander:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/gemini/play/MGplayer$4;->val$timeHander:Landroid/os/Handler;

    iput p2, p0, Lcom/gemini/play/MGplayer$4;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1424
    new-instance v0, Lcom/gemini/play/MGplayer$4$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MGplayer$4$1;-><init>(Lcom/gemini/play/MGplayer$4;)V

    .line 1434
    invoke-virtual {v0}, Lcom/gemini/play/MGplayer$4$1;->start()V

    .line 1435
    iget-object v0, p0, Lcom/gemini/play/MGplayer$4;->val$timeHander:Landroid/os/Handler;

    iget v1, p0, Lcom/gemini/play/MGplayer$4;->val$time:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1436
    return-void
.end method
