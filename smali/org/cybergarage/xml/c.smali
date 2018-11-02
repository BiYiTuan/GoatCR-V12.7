.class public abstract Lorg/cybergarage/xml/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/File;)Lorg/cybergarage/xml/b;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/c;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public abstract parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/b;
.end method

.method public parse(Ljava/lang/String;)Lorg/cybergarage/xml/b;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/c;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public parse(Ljava/net/URL;Z)Lorg/cybergarage/xml/b;
    .locals 6

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x50

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Content-Length"

    const-string v5, "0"

    invoke-virtual {v0, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v2, "HOST"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/cybergarage/xml/c;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/b;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/cybergarage/http/e;

    invoke-direct {v0}, Lorg/cybergarage/http/e;-><init>()V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Lorg/cybergarage/http/e;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/cybergarage/http/e;->o(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1, p2}, Lorg/cybergarage/http/e;->a(Ljava/lang/String;IZ)Lorg/cybergarage/http/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/g;->B()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/cybergarage/xml/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP comunication failed: no answer from peer.Unable to retrive resoure -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/cybergarage/http/g;->h()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/c;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/b;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method
