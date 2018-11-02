.class public Lorg/cybergarage/http/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/j;->a:Ljava/net/Socket;

    iput-object v0, p0, Lorg/cybergarage/http/j;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/cybergarage/http/j;->c:Ljava/io/OutputStream;

    invoke-direct {p0, p1}, Lorg/cybergarage/http/j;->a(Ljava/net/Socket;)V

    invoke-virtual {p0}, Lorg/cybergarage/http/j;->d()Z

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/http/j;->a:Ljava/net/Socket;

    return-void
.end method

.method private a(Lorg/cybergarage/http/g;Ljava/io/InputStream;JJZ)Z
    .locals 13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/cybergarage/http/g;->a(Ljava/util/Calendar;)V

    invoke-direct {p0}, Lorg/cybergarage/http/j;->f()Ljava/io/OutputStream;

    move-result-object v6

    :try_start_0
    move-wide/from16 v0, p5

    invoke-virtual {p1, v0, v1}, Lorg/cybergarage/http/g;->a(J)V

    invoke-virtual {p1}, Lorg/cybergarage/http/g;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/g;->z()Z

    move-result v7

    const-wide/16 v2, 0x0

    cmp-long v2, v2, p3

    if-gez v2, :cond_1

    invoke-virtual/range {p2 .. p4}, Ljava/io/InputStream;->skip(J)J

    :cond_1
    invoke-static {}, Lorg/cybergarage/http/b;->a()I

    move-result v8

    new-array v9, v8, [B

    const-wide/16 v4, 0x0

    int-to-long v2, v8

    cmp-long v2, v2, p5

    if-gez v2, :cond_4

    int-to-long v2, v8

    :goto_1
    const/4 v10, 0x0

    long-to-int v2, v2

    invoke-virtual {p2, v9, v10, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_2
    if-lez v2, :cond_6

    cmp-long v3, v4, p5

    if-gez v3, :cond_6

    const/4 v3, 0x1

    if-ne v7, v3, :cond_2

    int-to-long v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v6, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    const/4 v3, 0x1

    if-ne v7, v3, :cond_3

    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    int-to-long v2, v2

    add-long/2addr v4, v2

    int-to-long v2, v8

    sub-long v10, p5, v4

    cmp-long v2, v2, v10

    if-gez v2, :cond_5

    int-to-long v2, v8

    :goto_3
    const/4 v10, 0x0

    long-to-int v2, v2

    invoke-virtual {p2, v9, v10, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_2

    :cond_4
    move-wide/from16 v2, p5

    goto :goto_1

    :cond_5
    sub-long v2, p5, v4

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    if-ne v7, v2, :cond_7

    const-string v2, "0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private a(Lorg/cybergarage/http/g;[BJJZ)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cybergarage/http/g;->a(Ljava/util/Calendar;)V

    invoke-direct {p0}, Lorg/cybergarage/http/j;->f()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/cybergarage/http/g;->a(J)V

    invoke-virtual {p1}, Lorg/cybergarage/http/g;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    if-ne p7, v0, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/g;->z()Z

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    long-to-int v3, p3

    long-to-int v4, p5

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    if-ne v2, v0, :cond_2

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/j;->c:Ljava/io/OutputStream;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/j;->a:Ljava/net/Socket;

    return-object v0
.end method

.method public a(Lorg/cybergarage/http/g;JJZ)Z
    .locals 10

    invoke-virtual {p1}, Lorg/cybergarage/http/g;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/http/g;->k()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/cybergarage/http/j;->a(Lorg/cybergarage/http/g;Ljava/io/InputStream;JJZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/g;->h()[B

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/cybergarage/http/j;->a(Lorg/cybergarage/http/g;[BJJZ)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/http/j;->a()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/j;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/http/j;->a()Ljava/net/Socket;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/http/j;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/http/j;->c:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/http/j;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/http/j;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/http/j;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cybergarage/http/j;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/j;->a()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/cybergarage/http/j;->e()Z

    return-void
.end method
