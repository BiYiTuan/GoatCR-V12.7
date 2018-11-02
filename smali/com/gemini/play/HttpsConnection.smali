.class public Lcom/gemini/play/HttpsConnection;
.super Ljava/lang/Object;
.source "HttpsConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/HttpsConnection$DefaultTrustManager;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final METHOD_POST:Ljava/lang/String; = "POST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGet(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "ctype"    # Ljava/lang/String;
    .param p2, "connectTimeout"    # I
    .param p3, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "conn":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v3, 0x0

    .line 108
    .local v3, "rsp":Ljava/lang/String;
    :try_start_0
    const-string v4, "SSL"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 109
    .local v1, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    new-array v4, v4, [Ljavax/net/ssl/KeyManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    new-instance v7, Lcom/gemini/play/HttpsConnection$DefaultTrustManager;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/gemini/play/HttpsConnection$DefaultTrustManager;-><init>(Lcom/gemini/play/HttpsConnection$1;)V

    aput-object v7, v5, v6

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 110
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->setDefault(Ljavax/net/ssl/SSLContext;)V

    .line 112
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v5, "GET"

    invoke-static {v4, v5, p1}, Lcom/gemini/play/HttpsConnection;->getConnection(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 113
    new-instance v4, Lcom/gemini/play/HttpsConnection$2;

    invoke-direct {v4}, Lcom/gemini/play/HttpsConnection$2;-><init>()V

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 119
    invoke-virtual {v0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 120
    invoke-virtual {v0, p3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    invoke-static {v0}, Lcom/gemini/play/HttpsConnection;->getResponseAsString(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 138
    :cond_0
    return-object v3

    .line 121
    .end local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doGet GET_CONNECTOIN_ERROR, URL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    throw v4

    .line 127
    .restart local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doGet REQUEST_RESPONSE_ERROR, URL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "connectTimeout"    # I
    .param p4, "readTimeout"    # I
    .param p5, "getLocation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text/html;charset="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "ctype":Ljava/lang/String;
    const/4 v0, 0x0

    new-array v2, v0, [B

    .line 45
    .local v2, "content":[B
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    :cond_0
    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/gemini/play/HttpsConnection;->doPost(Ljava/lang/String;Ljava/lang/String;[BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doPost(Ljava/lang/String;Ljava/lang/String;[BIIZ)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "ctype"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .param p3, "connectTimeout"    # I
    .param p4, "readTimeout"    # I
    .param p5, "getLocation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "conn":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v4, 0x0

    .line 53
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 56
    .local v5, "rsp":Ljava/lang/String;
    :try_start_0
    const-string v6, "SSL"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 57
    .local v1, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    new-array v6, v6, [Ljavax/net/ssl/KeyManager;

    const/4 v7, 0x1

    new-array v7, v7, [Ljavax/net/ssl/TrustManager;

    const/4 v8, 0x0

    new-instance v9, Lcom/gemini/play/HttpsConnection$DefaultTrustManager;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/gemini/play/HttpsConnection$DefaultTrustManager;-><init>(Lcom/gemini/play/HttpsConnection$1;)V

    aput-object v9, v7, v8

    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v6, v7, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 58
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->setDefault(Ljavax/net/ssl/SSLContext;)V

    .line 60
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v7, "POST"

    invoke-static {v6, v7, p1}, Lcom/gemini/play/HttpsConnection;->getConnection(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 61
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 62
    new-instance v6, Lcom/gemini/play/HttpsConnection$1;

    invoke-direct {v6}, Lcom/gemini/play/HttpsConnection$1;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 68
    invoke-virtual {v0, p3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 69
    invoke-virtual {v0, p4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 76
    invoke-virtual {v4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 77
    invoke-static {v0}, Lcom/gemini/play/HttpsConnection;->getResponseAsString(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v5

    .line 78
    if-eqz v5, :cond_4

    .line 79
    if-eqz p5, :cond_4

    .line 80
    const-string v6, "Location"

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "location":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 82
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 92
    .end local v5    # "rsp":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 95
    :cond_0
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 100
    .end local v3    # "location":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 70
    .end local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    .restart local v5    # "rsp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doPost GET_CONNECTOIN_ERROR, URL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 95
    :cond_2
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    throw v6

    .line 86
    .restart local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doPost REQUEST_RESPONSE_ERROR, URL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    if-eqz v4, :cond_5

    .line 93
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 95
    :cond_5
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_0
.end method

.method private static getConnection(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 2
    .param p0, "JNurl"    # Ljava/net/URL;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "ctype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 180
    .local v0, "conn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 182
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 186
    return-object v0
.end method

.method protected static getResponseAsString(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
    .locals 6
    .param p0, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/HttpsConnection;->getResponseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 192
    .local v1, "es":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/gemini/play/HttpsConnection;->getStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 195
    :cond_0
    invoke-static {v1, v0}, Lcom/gemini/play/HttpsConnection;->getStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "msg":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 197
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getResponseCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ctype"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 224
    const-string v0, "utf-8"

    .line 226
    .local v0, "charset":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 227
    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "params":[Ljava/lang/String;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 229
    .local v2, "param":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string v6, "charset"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    const-string v4, "="

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "pair":[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_0

    .line 233
    aget-object v4, v1, v7

    if-eqz v4, :cond_0

    .line 234
    aget-object v4, v1, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 242
    .end local v1    # "pair":[Ljava/lang/String;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :cond_0
    return-object v0

    .line 228
    .restart local v2    # "param":Ljava/lang/String;
    .restart local v3    # "params":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static getStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 207
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 209
    .local v3, "writer":Ljava/io/StringWriter;
    const/16 v4, 0x100

    new-array v0, v4, [C

    .line 210
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 211
    .local v1, "count":I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-lez v1, :cond_1

    .line 212
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    .end local v0    # "chars":[C
    .end local v1    # "count":I
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "writer":Ljava/io/StringWriter;
    :catchall_0
    move-exception v4

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v4

    .line 215
    .restart local v0    # "chars":[C
    .restart local v1    # "count":I
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "writer":Ljava/io/StringWriter;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 217
    if-eqz p0, :cond_2

    .line 218
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 215
    :cond_2
    return-object v4
.end method
