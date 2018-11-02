.class public Lcom/gemini/custom/szysx;
.super Ljava/lang/Object;
.source "szysx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCpuByfileNull()Ljava/lang/String;
    .locals 13

    .prologue
    .line 32
    const-string v1, ""

    .line 33
    .local v1, "cpuid":Ljava/lang/String;
    const-string v5, ""

    .line 35
    .local v5, "m_szDevIDShort":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "35"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 37
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    rem-int/lit8 v11, v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 38
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    rem-int/lit8 v11, v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    rem-int/lit8 v11, v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 39
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    rem-int/lit8 v11, v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 40
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    rem-int/lit8 v11, v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 46
    :goto_0
    invoke-static {}, Lcom/gemini/custom/MACUtils;->getMac()Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "mac":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "m_szLongID":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "m_szLongID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 52
    const/4 v4, 0x0

    .line 54
    .local v4, "m":Ljava/security/MessageDigest;
    :try_start_1
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 58
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4, v10, v11, v12}, Ljava/security/MessageDigest;->update([BII)V

    .line 60
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 62
    .local v9, "p_md5Data":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 63
    .local v7, "m_szUniqueID":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v10, v9

    if-ge v3, v10, :cond_1

    .line 64
    aget-byte v10, v9, v3

    and-int/lit16 v0, v10, 0xff

    .line 66
    .local v0, "b":I
    const/16 v10, 0xf

    if-gt v0, v10, :cond_0

    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 69
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 55
    .end local v0    # "b":I
    .end local v3    # "i":I
    .end local v7    # "m_szUniqueID":Ljava/lang/String;
    .end local v9    # "p_md5Data":[B
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "i":I
    .restart local v7    # "m_szUniqueID":Ljava/lang/String;
    .restart local v9    # "p_md5Data":[B
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 72
    move-object v1, v7

    .line 73
    return-object v1

    .line 41
    .end local v3    # "i":I
    .end local v4    # "m":Ljava/security/MessageDigest;
    .end local v6    # "m_szLongID":Ljava/lang/String;
    .end local v7    # "m_szUniqueID":Ljava/lang/String;
    .end local v8    # "mac":Ljava/lang/String;
    .end local v9    # "p_md5Data":[B
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method public static getMac()Ljava/lang/String;
    .locals 8

    .prologue
    .line 79
    const-string v4, ""

    .line 81
    .local v4, "mac":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/class/net/eth0/address"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    new-instance v3, Ljava/io/FileInputStream;

    const-string v6, "/sys/class/net/eth0/address"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, "localFileInputStream":Ljava/io/FileInputStream;
    const/16 v6, 0x11

    new-array v0, v6, [B

    .line 85
    .local v0, "arrayOfByte":[B
    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-virtual {v3, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    .line 86
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v4    # "mac":Ljava/lang/String;
    .local v5, "mac":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 96
    .end local v0    # "arrayOfByte":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "localFileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "mac":Ljava/lang/String;
    .restart local v4    # "mac":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    :goto_1
    return-object v6

    .line 91
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 93
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "mac":Ljava/lang/String;
    .restart local v0    # "arrayOfByte":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "localFileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "mac":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "mac":Ljava/lang/String;
    .restart local v4    # "mac":Ljava/lang/String;
    goto :goto_2
.end method

.method public static getMacAddrWifi7()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 101
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 103
    .local v4, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "wlan0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 106
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 107
    .local v3, "macBytes":[B
    if-nez v3, :cond_1

    .line 108
    const-string v6, ""

    .line 124
    .end local v3    # "macBytes":[B
    .end local v4    # "nif":Ljava/net/NetworkInterface;
    :goto_0
    return-object v6

    .line 111
    .restart local v3    # "macBytes":[B
    .restart local v4    # "nif":Ljava/net/NetworkInterface;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v5, "res1":Ljava/lang/StringBuilder;
    array-length v7, v3

    :goto_1
    if-ge v6, v7, :cond_2

    aget-byte v1, v3, v6

    .line 113
    .local v1, "b":B
    const-string v8, "%02X:"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 116
    .end local v1    # "b":B
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 119
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 121
    .end local v3    # "macBytes":[B
    .end local v4    # "nif":Ljava/net/NetworkInterface;
    .end local v5    # "res1":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, ""

    goto :goto_0

    .line 124
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_4
    const-string v6, ""

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 6
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 21
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v2

    const-string v3, "szysx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const-string v2, "data"

    invoke-static {p0, v2, v5}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "fontsize"

    const/16 v4, 0x46

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 25
    .local v1, "size":I
    const-string v2, "data"

    invoke-static {p0, v2, v5}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 26
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fontsize"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "size":I
    :cond_0
    return-void
.end method
