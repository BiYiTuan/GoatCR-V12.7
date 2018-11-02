.class public Lcom/tvbus/engine/TvbusApi;
.super Ljava/lang/Object;
.source "TvbusApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TVBusActivity"

.field private static mTVCore:Lcom/tvbus/engine/TVCore;

.field private static playbackUrl:Ljava/lang/String;

.field private static useMPEGTS:Z


# instance fields
.field private _this:Landroid/content/Context;

.field private mBuffer:I

.field private mDlRate:I

.field private mDlTotal:I

.field private mTmPlayerConn:I

.field private mUlRate:I

.field private mUlTotal:I

.field private pHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tvbus/engine/TvbusApi;->useMPEGTS:Z

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tvbus/engine/TvbusApi;->_this:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkPlayer()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public parseCallbackInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x5b

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 134
    const/4 v2, 0x0

    .line 137
    .local v2, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .local v3, "jsonObj":Lorg/json/JSONObject;
    move-object v2, v3

    .line 142
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    if-nez v2, :cond_1

    .line 255
    :cond_0
    :goto_1
    return v5

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v7, "onInited"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    const-string v7, "tvcore"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_0

    move v5, v6

    .line 150
    goto :goto_1

    .line 154
    :cond_2
    const-string v7, "onStart"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 156
    const-string v5, "mkcache"

    const-string v7, ""

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move v5, v6

    .line 157
    goto :goto_1

    .line 159
    :cond_3
    const-string v7, "onPrepared"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 161
    sget-boolean v7, Lcom/tvbus/engine/TvbusApi;->useMPEGTS:Z

    if-ne v7, v6, :cond_5

    const-string v7, "http"

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 162
    const-string v5, "http"

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/tvbus/engine/TvbusApi;->playbackUrl:Ljava/lang/String;

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TVCore playbackUrl ... "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/tvbus/engine/TvbusApi;->playbackUrl:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 164
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 165
    .local v4, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "data":Landroid/os/Bundle;
    const-string v5, "url"

    sget-object v7, Lcom/tvbus/engine/TvbusApi;->playbackUrl:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 168
    iput v8, v4, Landroid/os/Message;->what:I

    .line 169
    iget-object v5, p0, Lcom/tvbus/engine/TvbusApi;->pHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 170
    iget-object v5, p0, Lcom/tvbus/engine/TvbusApi;->pHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    :cond_4
    iget-object v5, p0, Lcom/tvbus/engine/TvbusApi;->pHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v6

    .line 173
    goto/16 :goto_1

    .line 176
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_5
    sget-boolean v7, Lcom/tvbus/engine/TvbusApi;->useMPEGTS:Z

    if-nez v7, :cond_0

    const-string v7, "hls"

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 177
    const-string v5, "hls"

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/tvbus/engine/TvbusApi;->playbackUrl:Ljava/lang/String;

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TVCore playbackUrl ... "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/tvbus/engine/TvbusApi;->playbackUrl:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 180
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 181
    .restart local v4    # "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v5, "url"

    sget-object v7, Lcom/tvbus/engine/TvbusApi;->playbackUrl:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 184
    iput v8, v4, Landroid/os/Message;->what:I

    .line 185
    iget-object v5, p0, Lcom/tvbus/engine/TvbusApi;->pHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 186
    iget-object v5, p0, Lcom/tvbus/engine/TvbusApi;->pHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    :cond_6
    iget-object v5, p0, Lcom/tvbus/engine/TvbusApi;->pHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v6

    .line 189
    goto/16 :goto_1

    .line 193
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_7
    const-string v7, "onInfo"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 195
    const-string v7, "buffer"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/tvbus/engine/TvbusApi;->mBuffer:I

    .line 196
    const-string v7, "download_rate"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/tvbus/engine/TvbusApi;->mDlRate:I

    .line 197
    const-string v7, "upload_rate"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/tvbus/engine/TvbusApi;->mUlRate:I

    .line 198
    const-string v7, "download_total"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/tvbus/engine/TvbusApi;->mDlTotal:I

    .line 199
    const-string v7, "upload_total"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/tvbus/engine/TvbusApi;->mUlTotal:I

    .line 200
    const-string v7, "hls_last_conn"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/tvbus/engine/TvbusApi;->mTmPlayerConn:I

    move v5, v6

    .line 201
    goto/16 :goto_1

    .line 203
    :cond_8
    const-string v7, "onStop"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 205
    const-string v7, "errno"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_0

    move v5, v6

    .line 206
    goto/16 :goto_1

    .line 210
    :cond_9
    const-string v7, "onQut"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 212
    goto/16 :goto_1
.end method

.method public showCHResult()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public startChannel(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/tvbus/engine/TvbusApi;->stoPlayback()V

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TVCore startChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    invoke-virtual {v0, p1}, Lcom/tvbus/engine/TVCore;->start(Ljava/lang/String;)V

    .line 274
    iput-object p2, p0, Lcom/tvbus/engine/TvbusApi;->pHandler:Landroid/os/Handler;

    .line 275
    return-void
.end method

.method public startPlayback()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public startTVBusService(Landroid/content/Context;)V
    .locals 5
    .param p1, "t"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Lcom/tvbus/engine/TVCore;->getInstance()Lcom/tvbus/engine/TVCore;

    move-result-object v1

    sput-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    .line 35
    iput-object p1, p0, Lcom/tvbus/engine/TvbusApi;->_this:Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huanqiu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    const-string v2, "http://mkb.dreamhdtv.com:3918/v1/caches"

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setMKBroker(Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    const-string v2, "https://auth.dreamhdtv.com/v1/auth"

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setAuthUrl(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setUsername(Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setPassword(Ljava/lang/String;)V

    .line 48
    :cond_0
    sget-object v0, Lcom/gemini/custom/jjm;->auth_url:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jingjimu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jingjimudev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jingjimu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 54
    sget-object v1, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v1}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www.haofafa.com.tw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v1}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://box.123178.net/proxy/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    :cond_2
    const-string v1, "auth v5"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    const-string v2, "https://auth.tvgood.taipei/v5/auth"

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setAuthUrl(Ljava/lang/String;)V

    .line 71
    :cond_3
    :goto_0
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setUsername(Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setPassword(Ljava/lang/String;)V

    .line 78
    :cond_4
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    new-instance v2, Lcom/tvbus/engine/TvbusApi$1;

    invoke-direct {v2, p0}, Lcom/tvbus/engine/TvbusApi$1;-><init>(Lcom/tvbus/engine/TvbusApi;)V

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setTVListener(Lcom/tvbus/engine/TVListener;)V

    .line 128
    iget-object v1, p0, Lcom/tvbus/engine/TvbusApi;->_this:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tvbus/engine/TvbusApi;->_this:Landroid/content/Context;

    const-class v4, Lcom/tvbus/engine/TVService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 130
    return-void

    .line 59
    :cond_5
    sget-object v1, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v1}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www.wordtv.com.tw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    const-string v1, "auth v3"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    const-string v2, "https://auth.tvgood.taipei/v3/auth"

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setAuthUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_6
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    const-string v2, "https://auth.tvgood.taipei/v1/auth"

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setAuthUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_7
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jingjimudev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    sget-object v1, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    const-string v2, "https://auth.tvgood.taipei/v2/auth"

    invoke-virtual {v1, v2}, Lcom/tvbus/engine/TVCore;->setAuthUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stoPlayback()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public stopChannel()V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/tvbus/engine/TvbusApi;->mTVCore:Lcom/tvbus/engine/TVCore;

    invoke-virtual {v0}, Lcom/tvbus/engine/TVCore;->stop()V

    .line 267
    return-void
.end method

.method public stopTvBusService()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tvbus/engine/TvbusApi;->_this:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tvbus/engine/TvbusApi;->_this:Landroid/content/Context;

    const-class v3, Lcom/tvbus/engine/TVService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 260
    return-void
.end method

.method public tvcoreInited()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public updateStatus()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method
