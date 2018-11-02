.class public Lcom/gemini/play/GHttps;
.super Ljava/lang/Object;
.source "GHttps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/GHttps$MyTrustManager;,
        Lcom/gemini/play/GHttps$MyHostnameVerifier;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetHttps(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "https"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/gemini/play/GHttps;->GetHttps(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetHttps(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "https"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "cookie"    # Ljava/lang/String;
    .param p4, "UserAgent"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v4, ""

    .line 68
    .local v4, "res":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "myURL":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 72
    .local v1, "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 73
    invoke-virtual {v1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 76
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v2, "insr":Ljava/io/InputStreamReader;
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 79
    const-string v6, "User-agent"

    invoke-virtual {v1, v6, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 84
    const-string v6, "Cookie"

    invoke-virtual {v1, v6, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    const/4 v5, 0x0

    .line 89
    .local v5, "respInt":I
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 91
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->read()I

    move-result v5

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 81
    .end local v5    # "respInt":I
    :cond_1
    const-string v6, "User-agent"

    const-string v7, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)"

    invoke-virtual {v1, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1    # "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "insr":Ljava/io/InputStreamReader;
    .end local v3    # "myURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v4
.end method
