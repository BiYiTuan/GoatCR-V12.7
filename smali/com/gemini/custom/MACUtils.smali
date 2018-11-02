.class public Lcom/gemini/custom/MACUtils;
.super Ljava/lang/Object;
.source "MACUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMac()Ljava/lang/String;
    .locals 8

    .prologue
    .line 32
    const-string v4, ""

    .line 34
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/class/net/eth0/address"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 36
    new-instance v3, Ljava/io/FileInputStream;

    const-string v6, "/sys/class/net/eth0/address"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 37
    .local v3, "localFileInputStream":Ljava/io/FileInputStream;
    const/16 v6, 0x11

    new-array v0, v6, [B

    .line 38
    .local v0, "arrayOfByte":[B
    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-virtual {v3, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    .line 39
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 52
    .end local v0    # "arrayOfByte":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "localFileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    :goto_0
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    if-ne v4, v6, :cond_1

    .line 53
    :cond_0
    invoke-static {}, Lcom/gemini/custom/MACUtils;->getWifiMac()Ljava/lang/String;

    move-result-object v4

    .line 56
    :cond_1
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 57
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 58
    :cond_2
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 60
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    :goto_1
    return-object v6

    .line 44
    .restart local v2    # "file":Ljava/io/File;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/gemini/custom/MACUtils;->getWifiMac()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto :goto_1

    .line 48
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 50
    invoke-static {}, Lcom/gemini/custom/MACUtils;->getWifiMac()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v0    # "arrayOfByte":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "localFileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    goto :goto_2
.end method

.method public static getMac2()Ljava/lang/String;
    .locals 7

    .prologue
    .line 14
    const-string v3, ""

    .line 16
    .local v3, "mac":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v5, "/sys/class/net/eth0/address"

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 18
    .local v2, "localFileInputStream":Ljava/io/FileInputStream;
    const/16 v5, 0x11

    new-array v0, v5, [B

    .line 19
    .local v0, "arrayOfByte":[B
    const/4 v5, 0x0

    const/16 v6, 0x11

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 20
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v3    # "mac":Ljava/lang/String;
    .local v4, "mac":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 26
    .end local v0    # "arrayOfByte":[B
    .end local v2    # "localFileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "mac":Ljava/lang/String;
    .restart local v3    # "mac":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 23
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mac":Ljava/lang/String;
    .restart local v0    # "arrayOfByte":[B
    .restart local v2    # "localFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mac":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "mac":Ljava/lang/String;
    .restart local v3    # "mac":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getWifiMac()Ljava/lang/String;
    .locals 10

    .prologue
    .line 64
    const-string v6, ""

    .line 65
    .local v6, "str":Ljava/lang/String;
    const-string v4, ""

    .line 67
    .local v4, "macSerial":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "cat /sys/class/net/wlan0/address "

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 68
    .local v5, "pp":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v3, "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 71
    .local v2, "input":Ljava/io/LineNumberReader;
    :cond_0
    if-eqz v6, :cond_1

    .line 72
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 73
    if-eqz v6, :cond_0

    .line 74
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 81
    .end local v2    # "input":Ljava/io/LineNumberReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .end local v5    # "pp":Ljava/lang/Process;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 83
    :cond_2
    :try_start_1
    const-string v7, "/sys/class/net/eth0/address"

    invoke-static {v7}, Lcom/gemini/custom/MACUtils;->loadFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x11

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 91
    .end local v4    # "macSerial":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v4

    .line 78
    .restart local v4    # "macSerial":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "reader":Ljava/io/FileReader;
    invoke-static {v0}, Lcom/gemini/custom/MACUtils;->loadReaderAsString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 97
    return-object v1
.end method

.method public static loadReaderAsString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x1000

    new-array v0, v3, [C

    .line 102
    .local v0, "buffer":[C
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .line 103
    .local v2, "readLength":I
    :goto_0
    if-ltz v2, :cond_0

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
