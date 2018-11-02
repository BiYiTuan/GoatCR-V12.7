.class final Lcom/gemini/play/LIVEplayer$22;
.super Ljava/lang/Thread;
.source "LIVEplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideo_p2p(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arrs:[Ljava/lang/String;

.field final synthetic val$finalUserid:Ljava/lang/String;

.field final synthetic val$needrestart:I

.field final synthetic val$opts:[Ljava/lang/String;

.field final synthetic val$pHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3090
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$22;->val$finalUserid:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$22;->val$opts:[Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LIVEplayer$22;->val$arrs:[Ljava/lang/String;

    iput p4, p0, Lcom/gemini/play/LIVEplayer$22;->val$needrestart:I

    iput-object p5, p0, Lcom/gemini/play/LIVEplayer$22;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 3092
    const/4 v2, 0x0

    .line 3093
    .local v2, "murl":Ljava/lang/String;
    iget-object v5, p0, Lcom/gemini/play/LIVEplayer$22;->val$finalUserid:Ljava/lang/String;

    invoke-static {v5}, Lcom/gemini/custom/lookiptv;->lookiptv_userid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3094
    .local v4, "user":Ljava/lang/String;
    iget-object v5, p0, Lcom/gemini/play/LIVEplayer$22;->val$opts:[Ljava/lang/String;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$22;->val$arrs:[Ljava/lang/String;

    aget-object v6, v6, v9

    iget v7, p0, Lcom/gemini/play/LIVEplayer$22;->val$needrestart:I

    invoke-static {v5, v6, v4, v7}, Lcom/gemini/play/MGplayer;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3096
    .local v3, "ret":Ljava/lang/String;
    iget-object v5, p0, Lcom/gemini/play/LIVEplayer$22;->val$opts:[Ljava/lang/String;

    array-length v5, v5

    if-lt v5, v9, :cond_1

    .line 3097
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://127.0.0.1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$22;->val$opts:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$22;->val$opts:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3102
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3103
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3104
    .local v0, "data":Landroid/os/Bundle;
    const-string v5, "murl"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3106
    iput v8, v1, Landroid/os/Message;->what:I

    .line 3107
    iget-object v5, p0, Lcom/gemini/play/LIVEplayer$22;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3108
    iget-object v5, p0, Lcom/gemini/play/LIVEplayer$22;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3109
    :cond_0
    iget-object v5, p0, Lcom/gemini/play/LIVEplayer$22;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3111
    return-void

    .line 3099
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://127.0.0.1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$22;->val$arrs:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
