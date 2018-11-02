.class public Lcn/leo/nativehelper/NativeHelper;
.super Ljava/lang/Object;
.source "NativeHelper.java"


# static fields
.field private static instance:Lcn/leo/nativehelper/NativeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5
    const/4 v1, 0x0

    sput-object v1, Lcn/leo/nativehelper/NativeHelper;->instance:Lcn/leo/nativehelper/NativeHelper;

    .line 20
    :try_start_0
    const-string v1, "mtdutils"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 21
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load library!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/leo/nativehelper/NativeHelper;
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcn/leo/nativehelper/NativeHelper;->instance:Lcn/leo/nativehelper/NativeHelper;

    if-nez v0, :cond_1

    .line 10
    const-class v1, Lcn/leo/nativehelper/NativeHelper;

    monitor-enter v1

    .line 11
    :try_start_0
    sget-object v0, Lcn/leo/nativehelper/NativeHelper;->instance:Lcn/leo/nativehelper/NativeHelper;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcn/leo/nativehelper/NativeHelper;

    invoke-direct {v0}, Lcn/leo/nativehelper/NativeHelper;-><init>()V

    sput-object v0, Lcn/leo/nativehelper/NativeHelper;->instance:Lcn/leo/nativehelper/NativeHelper;

    .line 13
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    sget-object v0, Lcn/leo/nativehelper/NativeHelper;->instance:Lcn/leo/nativehelper/NativeHelper;

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public native getDeviceID()Ljava/lang/String;
.end method
