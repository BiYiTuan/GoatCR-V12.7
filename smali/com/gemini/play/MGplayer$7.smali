.class final Lcom/gemini/play/MGplayer$7;
.super Ljava/lang/Object;
.source "MGplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->runTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$timeHander:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2390
    iput-object p1, p0, Lcom/gemini/play/MGplayer$7;->val$timeHander:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/32 v2, 0xea60

    .line 2392
    sget-wide v0, Lcom/gemini/play/MGplayer;->seconds:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/gemini/play/MGplayer;->seconds:J

    .line 2393
    iget-object v0, p0, Lcom/gemini/play/MGplayer$7;->val$timeHander:Landroid/os/Handler;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2394
    return-void
.end method
