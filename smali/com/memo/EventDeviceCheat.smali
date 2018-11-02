.class public Lcom/memo/EventDeviceCheat;
.super Ljava/lang/Object;


# instance fields
.field public deviceChipId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/memo/EventDeviceCheat;->deviceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/memo/EventDeviceCheat;->deviceChipId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public throwOut()V
    .locals 4

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getDeviceListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/memo/sdk/IMemoDeviceListener;

    iget-object v2, p0, Lcom/memo/EventDeviceCheat;->deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/memo/EventDeviceCheat;->deviceChipId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/memo/sdk/IMemoDeviceListener;->onDeviceCheated(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
