.class final Lcom/gemini/custom/home$1;
.super Ljava/lang/Thread;
.source "home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/home;->Thread_home_Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/gemini/play/MGplayer;->udpIP:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/MGplayer;->udpIP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/gemini/play/MGplayer;->udpPort:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/MGplayer;->udpPort:Ljava/lang/String;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/gemini/custom/home;->home_send()V

    .line 28
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 29
    invoke-static {}, Lcom/gemini/custom/home;->home_send()V

    .line 32
    :cond_0
    return-void
.end method
