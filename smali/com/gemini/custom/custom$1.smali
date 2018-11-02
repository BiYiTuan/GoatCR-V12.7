.class final Lcom/gemini/custom/custom$1;
.super Ljava/lang/Thread;
.source "custom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/custom;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 10
    invoke-static {}, Lcom/gemini/custom/jufeng;->Thread_jufeng_Init()V

    .line 11
    invoke-static {}, Lcom/gemini/custom/kvod;->Thread_kvod_Init()V

    .line 12
    invoke-static {}, Lcom/gemini/custom/spain1;->Thread_spain1_Init()V

    .line 13
    invoke-static {}, Lcom/gemini/custom/home;->Thread_home_Init()V

    .line 14
    invoke-static {}, Lcom/gemini/custom/huaren;->Thread_huaren_Init()V

    .line 15
    return-void
.end method
