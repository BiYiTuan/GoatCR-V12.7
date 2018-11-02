.class public Lorg/cybergarage/http/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:I

.field private b:Ljava/net/ServerSocket;

.field private c:Ljava/net/InetAddress;

.field private d:I

.field private e:Lorg/cybergarage/util/ListenerList;

.field private f:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    iput-object v1, p0, Lorg/cybergarage/http/h;->c:Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/h;->d:I

    const v0, 0x13880

    iput v0, p0, Lorg/cybergarage/http/h;->a:I

    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/h;->e:Lorg/cybergarage/util/ListenerList;

    iput-object v1, p0, Lorg/cybergarage/http/h;->f:Ljava/lang/Thread;

    iput-object v1, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CyberHTTP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lorg/cybergarage/http/e;)V
    .locals 3

    iget-object v0, p0, Lorg/cybergarage/http/h;->e:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/cybergarage/http/h;->e:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/f;

    invoke-interface {v0, p1}, Lorg/cybergarage/http/f;->httpRequestRecieved(Lorg/cybergarage/http/e;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lorg/cybergarage/http/f;)V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/h;->e:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/http/h;->c:Ljava/net/InetAddress;

    iput p2, p0, Lorg/cybergarage/http/h;->d:I

    new-instance v2, Ljava/net/ServerSocket;

    iget v3, p0, Lorg/cybergarage/http/h;->d:I

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/cybergarage/http/h;->c:Ljava/net/InetAddress;

    invoke-direct {v2, v3, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/cybergarage/http/h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/http/h;->c:Ljava/net/InetAddress;

    const/4 v2, 0x0

    iput v2, p0, Lorg/cybergarage/http/h;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public d()Ljava/net/Socket;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/http/h;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.HTTPServer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cybergarage/http/h;->b:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/cybergarage/http/h;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/cybergarage/http/h;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/h;->f:Ljava/lang/Thread;

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    invoke-virtual {p0}, Lorg/cybergarage/http/h;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/cybergarage/http/h;->f:Ljava/lang/Thread;

    if-ne v1, v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :try_start_0
    const-string v1, "accept ..."

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/http/h;->d()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    new-instance v2, Lorg/cybergarage/http/i;

    invoke-direct {v2, p0, v1}, Lorg/cybergarage/http/i;-><init>(Lorg/cybergarage/http/h;Ljava/net/Socket;)V

    invoke-virtual {v2}, Lorg/cybergarage/http/i;->start()V

    const-string v1, "httpServThread ..."

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method
