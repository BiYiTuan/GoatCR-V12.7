.class public Lcom/tvbus/engine/TVCore;
.super Ljava/lang/Object;
.source "TVCore.java"


# static fields
.field static final RM_CLIENT:I = 0x2

.field static final RM_MASTER:I = 0x1

.field static final RM_STANDALONE:I

.field private static inst:Lcom/tvbus/engine/TVCore;

.field private static nativeHandle:J


# instance fields
.field private mkBroker:Ljava/lang/String;

.field private tvListener:Lcom/tvbus/engine/TVListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    :try_start_0
    const-string v0, "tvcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/tvbus/engine/TVCore;->tvListener:Lcom/tvbus/engine/TVListener;

    .line 11
    iput-object v0, p0, Lcom/tvbus/engine/TVCore;->mkBroker:Ljava/lang/String;

    return-void
.end method

.method private native description(J)Ljava/lang/String;
.end method

.method private native diagnose(J)V
.end method

.method private native err2String(JI)Ljava/lang/String;
.end method

.method public static declared-synchronized getInstance()Lcom/tvbus/engine/TVCore;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v2, Lcom/tvbus/engine/TVCore;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/tvbus/engine/TVCore;->inst:Lcom/tvbus/engine/TVCore;

    if-nez v3, :cond_0

    .line 19
    new-instance v3, Lcom/tvbus/engine/TVCore;

    invoke-direct {v3}, Lcom/tvbus/engine/TVCore;-><init>()V

    sput-object v3, Lcom/tvbus/engine/TVCore;->inst:Lcom/tvbus/engine/TVCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    sget-object v3, Lcom/tvbus/engine/TVCore;->inst:Lcom/tvbus/engine/TVCore;

    invoke-direct {v3}, Lcom/tvbus/engine/TVCore;->initialise()J

    move-result-wide v4

    sput-wide v4, Lcom/tvbus/engine/TVCore;->nativeHandle:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    sget-wide v4, Lcom/tvbus/engine/TVCore;->nativeHandle:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 32
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 24
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 26
    .restart local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :try_start_3
    sget-object v1, Lcom/tvbus/engine/TVCore;->inst:Lcom/tvbus/engine/TVCore;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private native init(JLandroid/content/Context;)I
.end method

.method private native initialise()J
.end method

.method private native quit(J)V
.end method

.method private native run(J)I
.end method

.method private native setAuthItems(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setAuthUrl(JLjava/lang/String;)V
.end method

.method private native setDomainSuffix(JLjava/lang/String;)V
.end method

.method private native setListener(JLcom/tvbus/engine/TVListener;)V
.end method

.method private native setMKBroker(JLjava/lang/String;)V
.end method

.method private native setPassword(JLjava/lang/String;)V
.end method

.method private native setPlayPort(JI)V
.end method

.method private native setRunningMode(JI)V
.end method

.method private native setServPort(JI)V
.end method

.method private native setUsername(JLjava/lang/String;)V
.end method

.method private native start(JLjava/lang/String;)V
.end method

.method private native stop(J)V
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->description(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v0, ""

    goto :goto_0
.end method

.method public diagnose()V
    .locals 2

    .prologue
    .line 139
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->diagnose(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public err2String(I)Ljava/lang/String;
    .locals 2
    .param p1, "errorno"    # I

    .prologue
    .line 158
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->err2String(JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v0, ""

    goto :goto_0
.end method

.method init(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->init(JLandroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 171
    :goto_0
    return v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const/4 v0, -0x1

    goto :goto_0
.end method

.method quit()V
    .locals 2

    .prologue
    .line 188
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->quit(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method run()I
    .locals 2

    .prologue
    .line 178
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->run(J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 181
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setAuthItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    sget-wide v2, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tvbus/engine/TVCore;->setAuthItems(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAuthUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setAuthUrl(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDomainSuffix(Ljava/lang/String;)V
    .locals 2
    .param p1, "domainSuffix"    # Ljava/lang/String;

    .prologue
    .line 103
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setDomainSuffix(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMKBroker(Ljava/lang/String;)V
    .locals 2
    .param p1, "mkBroker"    # Ljava/lang/String;

    .prologue
    .line 112
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setMKBroker(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setPassword(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPlayPort(I)V
    .locals 2
    .param p1, "iPort"    # I

    .prologue
    .line 49
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setPlayPort(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setRunningMode(I)V
    .locals 2
    .param p1, "rm"    # I

    .prologue
    .line 197
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setRunningMode(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setServPort(I)V
    .locals 2
    .param p1, "iPort"    # I

    .prologue
    .line 58
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setServPort(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTVListener(Lcom/tvbus/engine/TVListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/tvbus/engine/TVListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tvbus/engine/TVCore;->tvListener:Lcom/tvbus/engine/TVListener;

    .line 40
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setListener(JLcom/tvbus/engine/TVListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setUsername(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->start(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 130
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->stop(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method
