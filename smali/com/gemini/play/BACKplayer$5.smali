.class final Lcom/gemini/play/BACKplayer$5;
.super Ljava/lang/Object;
.source "BACKplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BACKplayer;->playVideoMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$seek:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/gemini/play/BACKplayer$5;->val$url:Ljava/lang/String;

    iput p2, p0, Lcom/gemini/play/BACKplayer$5;->val$seek:I

    iput-object p3, p0, Lcom/gemini/play/BACKplayer$5;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 941
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, "cpuinfo":Ljava/lang/String;
    const/4 v3, -0x1

    .line 944
    .local v3, "gplayer_port":I
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$url:Ljava/lang/String;

    const/16 v11, 0xa

    const/4 v12, 0x0

    iget v13, p0, Lcom/gemini/play/BACKplayer$5;->val$seek:I

    invoke-static {v10, v11, v12, v13}, Lcom/gemini/play/MGplayer;->mediaplayerload(Ljava/lang/String;III)I

    move-result v3

    .line 946
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#################### port: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "####################"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 947
    if-gez v3, :cond_2

    .line 949
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 950
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 951
    .local v7, "msg":Landroid/os/Message;
    const/16 v10, 0x5e

    iput v10, v7, Landroid/os/Message;->what:I

    .line 952
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$pHandler:Landroid/os/Handler;

    const/16 v11, 0x5e

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 953
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$pHandler:Landroid/os/Handler;

    const/16 v11, 0x5e

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 954
    :cond_0
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1143
    .end local v7    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 958
    :cond_2
    sget-object v10, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v11, "data"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "decode"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 959
    .local v5, "inx":I
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 960
    .local v8, "msg4":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 961
    .local v2, "data":Landroid/os/Bundle;
    const/4 v10, 0x1

    if-ne v5, v10, :cond_8

    .line 963
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$url:Ljava/lang/String;

    const-string v11, "gp2p://"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 965
    sget v10, Lcom/gemini/play/MGplayer;->httpdstart:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 966
    const-string v10, "url"

    const-string v11, "http://127.0.0.1:23456/playlist.m3u8"

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :goto_1
    invoke-virtual {v8, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1049
    const/16 v10, 0x5c

    iput v10, v8, Landroid/os/Message;->what:I

    .line 1050
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$pHandler:Landroid/os/Handler;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1051
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$pHandler:Landroid/os/Handler;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1085
    :cond_3
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$url:Ljava/lang/String;

    const-string v11, "gp2p://"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1087
    const/4 v9, 0x0

    .line 1088
    .local v9, "send_ok":Z
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_2
    const/16 v10, 0x78

    if-ge v4, v10, :cond_5

    .line 1090
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$url:Ljava/lang/String;

    sget-object v11, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1093
    sget-boolean v10, Lcom/gemini/play/BACKplayer;->player_isexit:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    .line 1096
    const/4 v0, 0x5

    .line 1097
    .local v0, "cachecount":I
    sget v10, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    if-ltz v10, :cond_c

    .line 1098
    sget v0, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    .line 1111
    :cond_4
    :goto_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayercache()I

    move-result v6

    .line 1112
    .local v6, "mediaplayercache":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mediaplayercache:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1113
    const/4 v10, -0x1

    if-ne v6, v10, :cond_d

    .line 1114
    const/4 v9, 0x1

    .line 1115
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$pHandler:Landroid/os/Handler;

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v8, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1126
    .end local v0    # "cachecount":I
    .end local v6    # "mediaplayercache":I
    :cond_5
    :goto_4
    if-nez v9, :cond_1

    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$url:Ljava/lang/String;

    sget-object v11, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    goto/16 :goto_0

    .line 968
    .end local v4    # "ii":I
    .end local v9    # "send_ok":Z
    :cond_6
    const-string v10, "url"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://127.0.0.1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 973
    :cond_7
    const-string v10, "url"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://127.0.0.1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1029
    :cond_8
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$url:Ljava/lang/String;

    const-string v11, "gp2p://"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1030
    sget v10, Lcom/gemini/play/MGplayer;->httpdstart:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 1031
    const-string v10, "url"

    const-string v11, "http://127.0.0.1:23456/playlist.m3u8"

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1033
    :cond_9
    invoke-static {}, Lcom/gemini/play/MGplayer;->isAmlogic()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1036
    const-string v10, "url"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://127.0.0.1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1038
    :cond_a
    const-string v10, "url"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://127.0.0.1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1044
    :cond_b
    const-string v10, "url"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://127.0.0.1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1099
    .restart local v0    # "cachecount":I
    .restart local v4    # "ii":I
    .restart local v9    # "send_ok":Z
    :cond_c
    sget v10, Lcom/gemini/play/MGplayer;->httpdstart:I

    if-nez v10, :cond_4

    .line 1100
    const/16 v0, 0xa

    goto/16 :goto_3

    .line 1117
    .restart local v6    # "mediaplayercache":I
    :cond_d
    if-ltz v6, :cond_e

    if-lt v6, v0, :cond_e

    .line 1118
    const/4 v9, 0x1

    .line 1119
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$pHandler:Landroid/os/Handler;

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v8, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 1123
    :cond_e
    const/16 v10, 0x1f4

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 1088
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1141
    .end local v0    # "cachecount":I
    .end local v4    # "ii":I
    .end local v6    # "mediaplayercache":I
    .end local v9    # "send_ok":Z
    :cond_f
    iget-object v10, p0, Lcom/gemini/play/BACKplayer$5;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
