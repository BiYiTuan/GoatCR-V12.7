.class final Lcom/gemini/play/LIVEplayer$17;
.super Ljava/lang/Object;
.source "LIVEplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$seek:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$urlid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$17;->val$urlid:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LIVEplayer$17;->val$password:Ljava/lang/String;

    iput p4, p0, Lcom/gemini/play/LIVEplayer$17;->val$seek:I

    iput-object p5, p0, Lcom/gemini/play/LIVEplayer$17;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1985
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$urlid:Ljava/lang/String;

    sput-object v15, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 1986
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$urlid:Ljava/lang/String;

    invoke-static {v15}, Lcom/gemini/play/LIVEplayer;->access$000(Ljava/lang/String;)V

    .line 1988
    const/4 v15, 0x1

    sput-boolean v15, Lcom/gemini/play/LIVEplayer;->currentUseHlsPlugin:Z

    .line 1990
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v3

    .line 1992
    .local v3, "cpuinfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    .line 1993
    .local v8, "key_url2":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v15

    const-string v16, "huidixing"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v15

    const-string v16, "woini"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$password:Ljava/lang/String;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$password:Ljava/lang/String;

    const-string v16, "geminipassword"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1994
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$password:Ljava/lang/String;

    const-string v16, "gjinghaog"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1995
    .local v13, "passwords":[Ljava/lang/String;
    array-length v15, v13

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    .line 1996
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v16, v13, v16

    invoke-static/range {v15 .. v16}, Lcom/gemini/custom/ihdtv;->geturl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 2012
    .end local v13    # "passwords":[Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v5, -0x1

    .line 2013
    .local v5, "gplayer_port":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "seek = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gemini/play/LIVEplayer$17;->val$seek:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2014
    const/16 v15, 0xa

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gemini/play/LIVEplayer$17;->val$seek:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v8, v15, v0, v1}, Lcom/gemini/play/MGplayer;->mediaplayerload(Ljava/lang/String;III)I

    move-result v5

    .line 2016
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "#################### port: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "####################"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2017
    if-gez v5, :cond_8

    .line 2018
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 2019
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 2020
    .local v10, "msg":Landroid/os/Message;
    const/16 v15, 0x5e

    iput v15, v10, Landroid/os/Message;->what:I

    .line 2021
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$pHandler:Landroid/os/Handler;

    const/16 v16, 0x5e

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2022
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$pHandler:Landroid/os/Handler;

    const/16 v16, 0x5e

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    .line 2023
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v15, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2181
    .end local v10    # "msg":Landroid/os/Message;
    :cond_3
    :goto_1
    return-void

    .line 1998
    .end local v5    # "gplayer_port":I
    .restart local v13    # "passwords":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    const-string v16, "ihdtv.top"

    invoke-static/range {v15 .. v16}, Lcom/gemini/custom/ihdtv;->geturl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 2000
    .end local v13    # "passwords":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$password:Ljava/lang/String;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$password:Ljava/lang/String;

    const-string v16, "geminipassword"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$password:Ljava/lang/String;

    const-string v16, "geminipassword3"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    const-string v16, "playlist.m3u8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2001
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_7

    .line 2002
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&uidgemini="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-wide v16, Lcom/gemini/play/MGplayer;->seconds:J

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 2004
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?uidgemini="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-wide v16, Lcom/gemini/play/MGplayer;->seconds:J

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 2027
    .restart local v5    # "gplayer_port":I
    :cond_8
    sget-object v15, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v16, "data"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "decode"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2028
    .local v7, "inx":I
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 2029
    .local v11, "msg4":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2030
    .local v4, "data":Landroid/os/Bundle;
    const/4 v15, 0x1

    if-ne v7, v15, :cond_f

    .line 2031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    const-string v16, "gp2p://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 2032
    sget v15, Lcom/gemini/play/MGplayer;->httpdstart:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 2033
    const-string v15, "url"

    const-string v16, "http://127.0.0.1:23456/playlist.m3u8"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    :goto_2
    invoke-virtual {v11, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2124
    const/16 v15, 0x5c

    iput v15, v11, Landroid/os/Message;->what:I

    .line 2125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$pHandler:Landroid/os/Handler;

    const/16 v16, 0x5c

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$pHandler:Landroid/os/Handler;

    const/16 v16, 0x5c

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    .line 2128
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    const-string v16, "gp2p://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 2129
    const/4 v14, 0x0

    .line 2130
    .local v14, "send_ok":Z
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_3
    const/16 v15, 0x78

    if-ge v6, v15, :cond_c

    .line 2132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    sget-object v16, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2134
    sget-boolean v15, Lcom/gemini/play/LIVEplayer;->player_isexit:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 2137
    const/4 v2, 0x5

    .line 2138
    .local v2, "cachecount":I
    sget v15, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    if-ltz v15, :cond_a

    .line 2139
    sget v2, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    .line 2141
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$password:Ljava/lang/String;

    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$password:Ljava/lang/String;

    const-string v16, "passwordexo"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    sget v15, Lcom/gemini/play/MGplayer;->httpdstart:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 2142
    const/4 v2, 0x1

    .line 2150
    :cond_b
    :goto_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayercache()I

    move-result v9

    .line 2151
    .local v9, "mediaplayercache":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mediaplayercache:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2152
    const/4 v15, -0x1

    if-ne v9, v15, :cond_19

    .line 2153
    const/4 v14, 0x1

    .line 2154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$pHandler:Landroid/os/Handler;

    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v15, v11, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2165
    .end local v2    # "cachecount":I
    .end local v9    # "mediaplayercache":I
    :cond_c
    :goto_5
    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    sget-object v16, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    goto/16 :goto_1

    .line 2035
    .end local v6    # "ii":I
    .end local v14    # "send_ok":Z
    :cond_d
    const-string v15, "url"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://127.0.0.1:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2039
    :cond_e
    const-string v15, "url"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://127.0.0.1:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2051
    :cond_f
    const-string v15, "HI3716M"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "HIK3V2"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 2052
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    const-string v16, "gp2p://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 2053
    sget v15, Lcom/gemini/play/MGplayer;->httpdstart:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 2054
    const-string v15, "url"

    const-string v16, "http://127.0.0.1:23456/playlist.m3u8"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2056
    :cond_11
    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->access$200(I)Ljava/lang/String;

    move-result-object v12

    .line 2057
    .local v12, "murl":Ljava/lang/String;
    const-string v15, "url"

    invoke-virtual {v4, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2065
    .end local v12    # "murl":Ljava/lang/String;
    :cond_12
    const-string v15, "url"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://127.0.0.1:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2103
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$url:Ljava/lang/String;

    const-string v16, "gp2p://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 2104
    sget v15, Lcom/gemini/play/MGplayer;->httpdstart:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 2105
    const-string v15, "url"

    const-string v16, "http://127.0.0.1:23456/playlist.m3u8"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2107
    :cond_14
    invoke-static {}, Lcom/gemini/play/MGplayer;->isAmlogic()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 2110
    const-string v15, "url"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://127.0.0.1:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2112
    :cond_15
    const-string v15, "url"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://127.0.0.1:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2118
    :cond_16
    const-string v15, "url"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://127.0.0.1:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2143
    .restart local v2    # "cachecount":I
    .restart local v6    # "ii":I
    .restart local v14    # "send_ok":Z
    :cond_17
    sget v15, Lcom/gemini/play/MGplayer;->httpdstart:I

    if-nez v15, :cond_b

    .line 2144
    sget v15, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    if-ltz v15, :cond_18

    .line 2145
    sget v2, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    goto/16 :goto_4

    .line 2147
    :cond_18
    const/16 v2, 0xa

    goto/16 :goto_4

    .line 2156
    .restart local v9    # "mediaplayercache":I
    :cond_19
    if-ltz v9, :cond_1a

    if-lt v9, v2, :cond_1a

    .line 2157
    const/4 v14, 0x1

    .line 2158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$pHandler:Landroid/os/Handler;

    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v15, v11, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 2162
    :cond_1a
    const/16 v15, 0x1f4

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 2130
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 2179
    .end local v2    # "cachecount":I
    .end local v6    # "ii":I
    .end local v9    # "mediaplayercache":I
    .end local v14    # "send_ok":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/LIVEplayer$17;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v15, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
