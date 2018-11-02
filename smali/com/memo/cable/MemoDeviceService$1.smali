.class Lcom/memo/cable/MemoDeviceService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cybergarage/upnp/device/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/memo/cable/MemoDeviceService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/memo/cable/MemoDeviceService;


# direct methods
.method constructor <init>(Lcom/memo/cable/MemoDeviceService;)V
    .locals 0

    iput-object p1, p0, Lcom/memo/cable/MemoDeviceService$1;->this$0:Lcom/memo/cable/MemoDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceSearchResponseReceived(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->c()J

    return-void
.end method
