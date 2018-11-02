.class final Lcom/gemini/play/LIVEplayer$24;
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

.field final synthetic val$opts:[Ljava/lang/String;

.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$userids:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3192
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$24;->val$userids:[Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$24;->val$opts:[Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LIVEplayer$24;->val$arrs:[Ljava/lang/String;

    iput-object p4, p0, Lcom/gemini/play/LIVEplayer$24;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 3194
    :goto_0
    sget-object v6, Lcom/gemini/play/LIVEplayer;->geminipassword9_thread:Ljava/lang/Thread;

    if-eqz v6, :cond_0

    .line 3195
    const/4 v3, 0x0

    .line 3196
    .local v3, "murl":Ljava/lang/String;
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$24;->val$userids:[Ljava/lang/String;

    aget-object v6, v6, v11

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3197
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$24;->val$userids:[Ljava/lang/String;

    aget-object v6, v6, v10

    const-string v7, "p2p://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3198
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$24;->val$userids:[Ljava/lang/String;

    aget-object v6, v6, v10

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3199
    .local v0, "arrs2":[Ljava/lang/String;
    aget-object v6, v0, v12

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3200
    .local v4, "opts2":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 3227
    .end local v0    # "arrs2":[Ljava/lang/String;
    .end local v3    # "murl":Ljava/lang/String;
    .end local v4    # "opts2":[Ljava/lang/String;
    :cond_0
    return-void

    .line 3202
    .restart local v0    # "arrs2":[Ljava/lang/String;
    .restart local v3    # "murl":Ljava/lang/String;
    .restart local v4    # "opts2":[Ljava/lang/String;
    :cond_1
    aget-object v6, v4, v9

    aget-object v7, v0, v10

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v11}, Lcom/gemini/play/MGplayer;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3203
    .local v5, "ret":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "geminipassword9_thread:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$24;->val$userids:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$24;->val$userids:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$24;->val$userids:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3204
    const/16 v6, 0x3e8

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 3208
    .end local v0    # "arrs2":[Ljava/lang/String;
    .end local v4    # "opts2":[Ljava/lang/String;
    .end local v5    # "ret":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$24;->val$opts:[Ljava/lang/String;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$24;->val$arrs:[Ljava/lang/String;

    aget-object v7, v7, v10

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v11}, Lcom/gemini/play/MGplayer;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3209
    .restart local v5    # "ret":Ljava/lang/String;
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$24;->val$opts:[Ljava/lang/String;

    array-length v6, v6

    if-lt v6, v10, :cond_4

    .line 3210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://127.0.0.1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$24;->val$opts:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$24;->val$opts:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3215
    :goto_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 3216
    .local v2, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3217
    .local v1, "data":Landroid/os/Bundle;
    const-string v6, "murl"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3219
    iput v9, v2, Landroid/os/Message;->what:I

    .line 3220
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$24;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3221
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$24;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3222
    :cond_3
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$24;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3225
    iget-object v6, p0, Lcom/gemini/play/LIVEplayer$24;->val$userids:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->sleep(I)V

    goto/16 :goto_0

    .line 3212
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://127.0.0.1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$24;->val$arrs:[Ljava/lang/String;

    aget-object v7, v7, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
