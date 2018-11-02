.class public final Lorg/cybergarage/util/Debug;
.super Ljava/lang/Object;


# static fields
.field public static debug:Lorg/cybergarage/util/Debug;

.field public static enabled:Z


# instance fields
.field private out:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cybergarage/util/Debug;

    invoke-direct {v0}, Lorg/cybergarage/util/Debug;-><init>()V

    sput-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/cybergarage/util/Debug;->out:Ljava/io/PrintStream;

    return-void
.end method

.method public static getDebug()Lorg/cybergarage/util/Debug;
    .locals 1

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    return-object v0
.end method

.method public static isOn()Z
    .locals 1

    sget-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    return v0
.end method

.method public static final message(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CyberGarage message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "cyber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CyberGarage message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final message(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "CyberGarage message : "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "cyber"

    const-string v1, "CyberGarage message : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cyber"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cyber"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final off()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    return-void
.end method

.method public static final on()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    return-void
.end method

.method public static final warning(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v0, "cyber"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final warning(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CyberGarage warning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "cyber"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final warning(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CyberGarage warning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CyberGarage warning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CyberGarage warning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getOut()Ljava/io/PrintStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/util/Debug;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOut(Ljava/io/PrintStream;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/cybergarage/util/Debug;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
