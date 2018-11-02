.class public Lcom/memo/cable/ChipidChecker;
.super Ljava/lang/Object;


# static fields
.field public static final CHIPID_FAILD:I = -0x1

.field public static final CHIPID_NOT_FOUND:I = 0x0

.field public static final CHIPID_SUCCESS:I = 0x1

.field private static instance:Lcom/memo/cable/ChipidChecker;


# instance fields
.field public mChipidTickets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceCheatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/memo/EventDeviceCheat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/memo/cable/ChipidChecker;->instance:Lcom/memo/cable/ChipidChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/memo/cable/ChipidChecker;->mDeviceCheatList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/memo/cable/ChipidChecker;->mChipidTickets:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/memo/cable/ChipidChecker;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/memo/cable/ChipidChecker;->mDeviceCheatList:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkNewChipid(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "12345678"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0000000000000000"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/memo/cable/ChipidChecker;->mChipidTickets:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://api.memohi.com/tubicast_chipidcheck?chipid=%s&p3=%s&vercode=%s&channel_id=%s&b2=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v0}, Lcom/memo/ManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "999"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {v0}, Lcom/memo/ManifestUtils;->getAnAndroidIDdroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/memo/cable/ChipidChecker$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/memo/cable/ChipidChecker$1;-><init>(Lcom/memo/cable/ChipidChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getInstace()Lcom/memo/cable/ChipidChecker;
    .locals 1

    sget-object v0, Lcom/memo/cable/ChipidChecker;->instance:Lcom/memo/cable/ChipidChecker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/memo/cable/ChipidChecker;

    invoke-direct {v0}, Lcom/memo/cable/ChipidChecker;-><init>()V

    sput-object v0, Lcom/memo/cable/ChipidChecker;->instance:Lcom/memo/cable/ChipidChecker;

    :cond_0
    sget-object v0, Lcom/memo/cable/ChipidChecker;->instance:Lcom/memo/cable/ChipidChecker;

    return-object v0
.end method


# virtual methods
.method public checkChipid(Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/memo/cable/ChipidChecker;->mChipidTickets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/memo/cable/ChipidChecker;->mChipidTickets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/memo/cable/ChipidChecker;->checkNewChipid(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheatDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/memo/EventDeviceCheat;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/memo/cable/ChipidChecker;->mDeviceCheatList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/memo/EventDeviceCheat;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
