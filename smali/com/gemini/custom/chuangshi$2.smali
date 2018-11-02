.class final Lcom/gemini/custom/chuangshi$2;
.super Ljava/lang/Object;
.source "chuangshi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/chuangshi;->Thread_Chuangshi_Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ChuangshiHander:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/gemini/custom/chuangshi$2;->val$ChuangshiHander:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Lcom/gemini/custom/chuangshi;->chuangshi_send()V

    .line 88
    iget-object v0, p0, Lcom/gemini/custom/chuangshi$2;->val$ChuangshiHander:Landroid/os/Handler;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method
