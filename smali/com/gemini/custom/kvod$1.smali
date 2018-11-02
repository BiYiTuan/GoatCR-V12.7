.class final Lcom/gemini/custom/kvod$1;
.super Ljava/lang/Thread;
.source "kvod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/kvod;->kvod_send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lcom/gemini/custom/UdpClient;


# direct methods
.method constructor <init>(Lcom/gemini/custom/UdpClient;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/gemini/custom/kvod$1;->val$client:Lcom/gemini/custom/UdpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/gemini/custom/kvod$1;->val$client:Lcom/gemini/custom/UdpClient;

    sget-object v1, Lcom/gemini/play/MGplayer;->udpIP:Ljava/lang/String;

    sget-object v2, Lcom/gemini/play/MGplayer;->udpPort:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/gemini/custom/UdpClient;->send(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    return-void
.end method
