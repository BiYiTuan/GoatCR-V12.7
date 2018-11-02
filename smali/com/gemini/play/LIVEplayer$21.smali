.class final Lcom/gemini/play/LIVEplayer$21;
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

.field final synthetic val$link:Ljava/lang/String;

.field final synthetic val$needrestart:I

.field final synthetic val$opts:[Ljava/lang/String;

.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$useragent2:Ljava/lang/String;

.field final synthetic val$userids:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3019
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$21;->val$userids:[Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$21;->val$useragent2:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LIVEplayer$21;->val$link:Ljava/lang/String;

    iput-object p4, p0, Lcom/gemini/play/LIVEplayer$21;->val$opts:[Ljava/lang/String;

    iput-object p5, p0, Lcom/gemini/play/LIVEplayer$21;->val$arrs:[Ljava/lang/String;

    iput p6, p0, Lcom/gemini/play/LIVEplayer$21;->val$needrestart:I

    iput-object p7, p0, Lcom/gemini/play/LIVEplayer$21;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 3021
    const/4 v9, 0x0

    .line 3022
    .local v9, "time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$userids:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const-string v14, "https://"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3023
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$userids:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/16 v14, 0x1388

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/LIVEplayer$21;->val$useragent2:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/gemini/play/MGplayer;->sendServerCmd_https(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3027
    :goto_0
    const/4 v7, 0x0

    .line 3028
    .local v7, "p2p_password":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3029
    .local v8, "ret":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3031
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x7

    if-le v13, v14, :cond_0

    .line 3032
    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3033
    .local v10, "times":[Ljava/lang/String;
    array-length v13, v10

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 3034
    const/4 v13, 0x0

    aget-object v13, v10, v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3035
    .local v2, "date":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v10, v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3037
    .local v3, "hour":[Ljava/lang/String;
    array-length v13, v2

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    array-length v13, v3

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 3038
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "date md5:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v2, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v2, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v14, v2, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$userids:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3039
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v2, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v2, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v14, v2, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$userids:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 3044
    .end local v2    # "date":[Ljava/lang/String;
    .end local v3    # "hour":[Ljava/lang/String;
    .end local v10    # "times":[Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    .line 3045
    .local v11, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$userids:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const-string v14, "https://"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3046
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$userids:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1388

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/LIVEplayer$21;->val$useragent2:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/gemini/play/MGplayer;->sendServerCmd_https(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3050
    :goto_1
    const-string v13, "\\|"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 3052
    .local v12, "values":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "playvideo password "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3054
    array-length v13, v12

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 3055
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$link:Ljava/lang/String;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$link:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    .line 3056
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$link:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3059
    :goto_2
    const/4 v6, 0x0

    .line 3060
    .local v6, "murl":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v13, ""

    if-eq v7, v13, :cond_1

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_7

    .line 3061
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$opts:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$arrs:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    sget-object v15, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v15}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gemini/play/LIVEplayer$21;->val$needrestart:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/gemini/play/MGplayer;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 3067
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$opts:[Ljava/lang/String;

    array-length v13, v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_8

    .line 3068
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://127.0.0.1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$opts:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$opts:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3073
    :goto_4
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 3074
    .local v5, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3075
    .local v1, "data":Landroid/os/Bundle;
    const-string v13, "murl"

    invoke-virtual {v1, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3077
    const/4 v13, 0x0

    iput v13, v5, Landroid/os/Message;->what:I

    .line 3078
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$pHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3079
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$pHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 3080
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v13, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3083
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "murl":Ljava/lang/String;
    :cond_3
    return-void

    .line 3025
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "p2p_password":Ljava/lang/String;
    .end local v8    # "ret":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "values":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$userids:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/16 v14, 0x1388

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/LIVEplayer$21;->val$useragent2:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 3048
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v7    # "p2p_password":Ljava/lang/String;
    .restart local v8    # "ret":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$userids:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1388

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/LIVEplayer$21;->val$useragent2:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 3058
    .restart local v12    # "values":[Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    aget-object v7, v12, v13

    goto/16 :goto_2

    .line 3064
    .restart local v6    # "murl":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LIVEplayer$21;->val$opts:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$arrs:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    sget-object v15, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v15}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gemini/play/LIVEplayer$21;->val$needrestart:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v7, v15, v0}, Lcom/gemini/play/MGplayer;->s1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3070
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://127.0.0.1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LIVEplayer$21;->val$arrs:[Ljava/lang/String;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4
.end method
