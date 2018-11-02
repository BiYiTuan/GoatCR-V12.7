.class public Lcom/memo/cable/DeviceFullSearch;
.super Ljava/lang/Object;


# static fields
.field private static count:I

.field private static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/memo/cable/DeviceFullSearch;->count:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/memo/cable/DeviceFullSearch;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/memo/cable/DeviceFullSearch;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static forceSearchDLNADevice(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v1, Lcom/memo/cable/DeviceFullSearch;->count:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v4, 0x1

    if-ge v0, v4, :cond_1

    new-instance v4, Lcom/memo/cable/DeviceFullSearch$1;

    invoke-direct {v4, v2}, Lcom/memo/cable/DeviceFullSearch$1;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/memo/cable/DeviceFullSearch$2;

    invoke-direct {v0, v3, v2}, Lcom/memo/cable/DeviceFullSearch$2;-><init>(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
