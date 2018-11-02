.class public Lorg/cybergarage/http/e;
.super Lorg/cybergarage/http/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lorg/cybergarage/http/j;

.field private g:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cybergarage/http/d;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/http/e;->b:Ljava/lang/String;

    iput-object v1, p0, Lorg/cybergarage/http/e;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/e;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/http/e;->e:I

    iput-object v1, p0, Lorg/cybergarage/http/e;->f:Lorg/cybergarage/http/j;

    iput-object v1, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/http/e;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public B()Z
    .locals 1

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 1

    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 1

    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/http/e;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public I()Z
    .locals 1

    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/http/e;->e:I

    return v0
.end method

.method public L()Lorg/cybergarage/http/j;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/e;->f:Lorg/cybergarage/http/j;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->L()Lorg/cybergarage/http/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/j;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/cybergarage/http/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->r()Z

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/e;->s()Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/http/e;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    move v2, v1

    :goto_1
    if-eq v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public R()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->L()Lorg/cybergarage/http/j;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/cybergarage/http/d;->b(Lorg/cybergarage/http/j;)Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->e(I)Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 1

    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->e(I)Z

    move-result v0

    return v0
.end method

.method public U()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;IZ)Lorg/cybergarage/http/g;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/cybergarage/http/e;->a(Ljava/lang/String;IZZ)Lorg/cybergarage/http/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;IZZ)Lorg/cybergarage/http/g;
    .locals 10

    const/4 v2, 0x0

    new-instance v4, Lorg/cybergarage/http/g;

    invoke-direct {v4, p4}, Lorg/cybergarage/http/g;-><init>(Z)V

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/e;->l(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    const-string v0, "Keep-Alive"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->D()Z

    move-result v5

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    iget-object v0, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const v3, 0x13880

    invoke-virtual {v0, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->z()Z

    move-result v7

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    if-eqz p4, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v1, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lorg/cybergarage/util/StringUtil;->edsReturnBuffer(Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    :goto_1
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    array-length v0, v1

    :cond_1
    if-lez v0, :cond_3

    if-eqz v7, :cond_2

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->write([B)V

    if-eqz v7, :cond_3

    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    if-eqz v7, :cond_4

    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V

    iget-object v0, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    invoke-virtual {v4, v1, v5}, Lorg/cybergarage/http/g;->a(Ljava/io/InputStream;Z)Z
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p3, :cond_7

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    :try_start_5
    iget-object v0, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_11

    :cond_6
    :goto_4
    iput-object v2, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    :cond_7
    :goto_5
    return-object v4

    :cond_8
    const-string v0, "close"

    goto/16 :goto_0

    :cond_9
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    const/16 v5, 0x1f4

    :try_start_7
    invoke-virtual {v4, v5}, Lorg/cybergarage/http/g;->d(I)V

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez p3, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_7
    if-eqz v1, :cond_a

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_a
    :goto_8
    if-eqz v3, :cond_b

    :try_start_a
    iget-object v0, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    :cond_b
    :goto_9
    iput-object v2, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_a
    const/16 v5, 0x1f4

    :try_start_b
    invoke-virtual {v4, v5}, Lorg/cybergarage/http/g;->d(I)V

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez p3, :cond_7

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :goto_b
    if-eqz v1, :cond_c

    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :cond_c
    :goto_c
    if-eqz v3, :cond_d

    :try_start_e
    iget-object v0, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :cond_d
    :goto_d
    iput-object v2, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_e
    if-nez p3, :cond_10

    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    :goto_f
    if-eqz v1, :cond_e

    :try_start_10
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    :cond_e
    :goto_10
    if-eqz v3, :cond_f

    :try_start_11
    iget-object v1, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    :cond_f
    :goto_11
    iput-object v2, p0, Lorg/cybergarage/http/e;->g:Ljava/net/Socket;

    :cond_10
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v4

    goto :goto_f

    :catch_9
    move-exception v1

    goto :goto_10

    :catch_a
    move-exception v1

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_e

    :catchall_2
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v0

    goto :goto_d

    :catch_c
    move-exception v0

    move-object v1, v2

    goto :goto_a

    :catch_d
    move-exception v0

    goto :goto_a

    :catch_e
    move-exception v0

    goto :goto_9

    :catch_f
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_10
    move-exception v0

    goto :goto_6

    :catch_11
    move-exception v0

    goto/16 :goto_4
.end method

.method public a(Lorg/cybergarage/http/e;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/e;->a(Lorg/cybergarage/http/d;)V

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->L()Lorg/cybergarage/http/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->c(Lorg/cybergarage/http/j;)V

    return-void
.end method

.method public a(Lorg/cybergarage/http/g;)Z
    .locals 12

    const-wide/16 v10, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->L()Lorg/cybergarage/http/j;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/http/g;->o()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->t()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->v()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->w()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gtz v1, :cond_2

    sub-long v4, v6, v10

    :goto_0
    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    :cond_0
    const/16 v0, 0x1a0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->e(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lorg/cybergarage/http/g;->a(JJJ)V

    const/16 v1, 0xce

    invoke-virtual {p1, v1}, Lorg/cybergarage/http/g;->d(I)V

    sub-long/2addr v4, v2

    add-long/2addr v4, v10

    :goto_2
    invoke-virtual {p0}, Lorg/cybergarage/http/e;->D()Z

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/cybergarage/http/j;->a(Lorg/cybergarage/http/g;JJZ)Z

    move-result v0

    goto :goto_1

    :cond_2
    move-wide v4, v8

    goto :goto_0

    :cond_3
    move-wide v2, v4

    move-wide v4, v6

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lorg/cybergarage/http/e;->c:Ljava/lang/String;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/http/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lorg/cybergarage/http/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/http/e;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(Lorg/cybergarage/http/j;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/http/e;->f:Lorg/cybergarage/http/j;

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lorg/cybergarage/http/e;->e:I

    return-void
.end method

.method public e(I)Z
    .locals 4

    new-instance v0, Lorg/cybergarage/http/g;

    invoke-direct {v0}, Lorg/cybergarage/http/g;-><init>()V

    invoke-virtual {v0, p1}, Lorg/cybergarage/http/g;->d(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/http/g;->a(J)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/e;->a(Lorg/cybergarage/http/g;)Z

    move-result v0

    return v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/http/e;->b:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/e;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/http/e;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/http/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
