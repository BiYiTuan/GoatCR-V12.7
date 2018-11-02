.class public Lcom/gemini/play/SetWebview$PluginInterface;
.super Ljava/lang/Object;
.source "SetWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/SetWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PluginInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/SetWebview;


# direct methods
.method public constructor <init>(Lcom/gemini/play/SetWebview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/SetWebview;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/gemini/play/SetWebview$PluginInterface;->this$0:Lcom/gemini/play/SetWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displayMac([B)Ljava/lang/String;
    .locals 9
    .param p1, "mac"    # [B

    .prologue
    .line 240
    const-string v4, ""

    .line 241
    .local v4, "macs":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 243
    aget-byte v0, p1, v1

    .line 244
    .local v0, "b":B
    const/4 v3, 0x0

    .line 245
    .local v3, "intValue":I
    if-ltz v0, :cond_1

    move v3, v0

    .line 247
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "iii":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_0

    .line 253
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "iii":Ljava/lang/String;
    :cond_1
    add-int/lit16 v3, v0, 0x100

    goto :goto_1

    .line 257
    .end local v0    # "b":B
    .end local v3    # "intValue":I
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 258
    return-object v4
.end method


# virtual methods
.method public CTCGetConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v2, p0, Lcom/gemini/play/SetWebview$PluginInterface;->this$0:Lcom/gemini/play/SetWebview;

    const-string v3, "data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "value":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    return-object v1
.end method

.method public CTCGetMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v0}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetVersion()I
    .locals 1

    .prologue
    .line 270
    sget v0, Lcom/gemini/custom/quanxing;->version:I

    return v0
.end method

.method public CTCGetWifiMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "00:00:00:00:00:00"

    return-object v0
.end method

.method public CTCLoaded()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    sput v0, Lcom/gemini/custom/quanxing;->load_timeout:I

    .line 286
    return-void
.end method

.method public CTCSetConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/gemini/play/SetWebview$PluginInterface;->this$0:Lcom/gemini/play/SetWebview;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method

.method public CTCSetUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/gemini/play/SetWebview$PluginInterface;->this$0:Lcom/gemini/play/SetWebview;

    const-string v2, "myconfig123"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/gemini/play/SetWebview;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "update"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public getMac()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 202
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 205
    .local v2, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 206
    .local v1, "mac":[B
    if-eqz v1, :cond_0

    .line 208
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v1}, Lcom/gemini/play/SetWebview$PluginInterface;->displayMac([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, v1}, Lcom/gemini/play/SetWebview$PluginInterface;->displayMac([B)Ljava/lang/String;

    move-result-object v3

    .line 212
    .end local v1    # "mac":[B
    .end local v2    # "ni":Ljava/net/NetworkInterface;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMac_file()Ljava/lang/String;
    .locals 6

    .prologue
    .line 216
    const-string v2, "/etc/system.mkey"

    .line 217
    .local v2, "str1":Ljava/lang/String;
    const-string v3, "00:00:00:00:00:00"

    .line 219
    .local v3, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v1, v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 221
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, v3

    .line 230
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "str2":Ljava/lang/String;
    .local v4, "str2":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 226
    .end local v4    # "str2":Ljava/lang/String;
    .restart local v3    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v5

    :cond_0
    move-object v4, v3

    .line 230
    .end local v3    # "str2":Ljava/lang/String;
    .restart local v4    # "str2":Ljava/lang/String;
    goto :goto_0
.end method
