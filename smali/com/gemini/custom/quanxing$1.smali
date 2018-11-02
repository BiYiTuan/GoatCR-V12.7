.class final Lcom/gemini/custom/quanxing$1;
.super Ljava/lang/Object;
.source "quanxing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/quanxing;->runCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkRunHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/gemini/custom/quanxing$1;->val$checkRunHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 116
    sget-object v6, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/gemini/custom/quanxing;->checkrunurl:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 119
    sget-object v6, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "arrs":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    .line 122
    iget-object v6, p0, Lcom/gemini/custom/quanxing$1;->val$checkRunHandler:Landroid/os/Handler;

    sget-object v7, Lcom/gemini/custom/quanxing;->checkRunRunnable:Ljava/lang/Runnable;

    sget v8, Lcom/gemini/custom/quanxing;->checkruntimes:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    .end local v0    # "arrs":[Ljava/lang/String;
    :goto_0
    return-void

    .line 125
    .restart local v0    # "arrs":[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x2

    aget-object v4, v0, v6

    .line 127
    .local v4, "p2pId":Ljava/lang/String;
    const-string v3, ""

    .line 129
    .local v3, "info":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v6

    invoke-static {v4, v6}, Lcom/gemini/play/MGplayer;->sendHttpRequestpercent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 134
    :goto_1
    const/4 v5, 0x0

    .line 135
    .local v5, "url":Ljava/lang/String;
    sget-object v6, Lcom/gemini/custom/quanxing;->checkrunurl:Ljava/lang/String;

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/gemini/custom/quanxing;->checkrunurl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?chid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check run = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 141
    sget v6, Lcom/gemini/custom/quanxing;->checktimeout:I

    invoke-static {v5, v6}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "data":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "====== checkRunRunnable data ======="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 143
    const-string v6, "finish"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 145
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 148
    .end local v0    # "arrs":[Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    .end local v4    # "p2pId":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/gemini/custom/quanxing$1;->val$checkRunHandler:Landroid/os/Handler;

    sget-object v7, Lcom/gemini/custom/quanxing;->checkRunRunnable:Ljava/lang/Runnable;

    sget v8, Lcom/gemini/custom/quanxing;->checkruntimes:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 130
    .restart local v0    # "arrs":[Ljava/lang/String;
    .restart local v3    # "info":Ljava/lang/String;
    .restart local v4    # "p2pId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/gemini/custom/quanxing;->checkrunurl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&chid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
