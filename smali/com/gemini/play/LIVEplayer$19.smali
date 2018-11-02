.class final Lcom/gemini/play/LIVEplayer$19;
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

.field final synthetic val$needrestart:I

.field final synthetic val$opts:[Ljava/lang/String;

.field final synthetic val$pHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2911
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$19;->val$opts:[Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$19;->val$arrs:[Ljava/lang/String;

    iput p3, p0, Lcom/gemini/play/LIVEplayer$19;->val$needrestart:I

    iput-object p4, p0, Lcom/gemini/play/LIVEplayer$19;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 2913
    const-string v11, ""

    .line 2914
    .local v11, "userid":Ljava/lang/String;
    iget-object v12, p0, Lcom/gemini/play/LIVEplayer$19;->val$opts:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v2, v12, v13

    .line 2915
    .local v2, "filmid":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filmid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2916
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LocalKeyID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/gemini/play/MGplayer;->LocalKeyID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2917
    sget-object v12, Lcom/gemini/play/LIVEplayer;->_this:Landroid/content/Context;

    const-string v13, "data"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 2918
    .local v9, "settings":Landroid/content/SharedPreferences;
    const-string v12, "cookie"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2919
    .local v0, "cookie":Ljava/lang/String;
    const-string v12, "useragent"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2920
    .local v10, "useragent":Ljava/lang/String;
    const-string v12, "server"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2926
    .local v8, "server":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x7

    if-le v12, v13, :cond_0

    .line 2927
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "filmid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&force_local_key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/gemini/play/MGplayer;->LocalKeyID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2928
    .local v6, "request":Ljava/lang/String;
    const/16 v12, 0x1388

    invoke-static {v6, v12, v0, v10}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2931
    .end local v6    # "request":Ljava/lang/String;
    :cond_0
    const-string v12, "link"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2933
    .local v3, "link":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x7

    if-le v12, v13, :cond_1

    .line 2934
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "local_key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/gemini/play/MGplayer;->LocalKeyID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2936
    :cond_1
    const-string v12, "&userid="

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2938
    const-string v12, "&userid="

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 2941
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "userid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2943
    const/4 v5, 0x0

    .line 2944
    .local v5, "murl":Ljava/lang/String;
    iget-object v12, p0, Lcom/gemini/play/LIVEplayer$19;->val$opts:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v13, p0, Lcom/gemini/play/LIVEplayer$19;->val$arrs:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    iget v14, p0, Lcom/gemini/play/LIVEplayer$19;->val$needrestart:I

    invoke-static {v12, v13, v11, v14}, Lcom/gemini/play/MGplayer;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2946
    .local v7, "ret":Ljava/lang/String;
    iget-object v12, p0, Lcom/gemini/play/LIVEplayer$19;->val$opts:[Ljava/lang/String;

    array-length v12, v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_4

    .line 2947
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://127.0.0.1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/gemini/play/LIVEplayer$19;->val$opts:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/gemini/play/LIVEplayer$19;->val$opts:[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2952
    :goto_0
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2953
    .local v4, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2954
    .local v1, "data":Landroid/os/Bundle;
    const-string v12, "murl"

    invoke-virtual {v1, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2956
    const/4 v12, 0x0

    iput v12, v4, Landroid/os/Message;->what:I

    .line 2957
    iget-object v12, p0, Lcom/gemini/play/LIVEplayer$19;->val$pHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2958
    iget-object v12, p0, Lcom/gemini/play/LIVEplayer$19;->val$pHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 2959
    :cond_3
    iget-object v12, p0, Lcom/gemini/play/LIVEplayer$19;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v12, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2960
    return-void

    .line 2949
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://127.0.0.1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/gemini/play/LIVEplayer$19;->val$arrs:[Ljava/lang/String;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
