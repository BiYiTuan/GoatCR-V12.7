.class Lcom/memo/cable/ChipidChecker$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/memo/cable/ChipidChecker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/memo/cable/ChipidChecker$1;

.field final synthetic val$event:Lcom/memo/EventDeviceCheat;


# direct methods
.method constructor <init>(Lcom/memo/cable/ChipidChecker$1;Lcom/memo/EventDeviceCheat;)V
    .locals 0

    iput-object p1, p0, Lcom/memo/cable/ChipidChecker$1$1;->this$1:Lcom/memo/cable/ChipidChecker$1;

    iput-object p2, p0, Lcom/memo/cable/ChipidChecker$1$1;->val$event:Lcom/memo/EventDeviceCheat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/memo/cable/ChipidChecker$1$1;->val$event:Lcom/memo/EventDeviceCheat;

    invoke-virtual {v0}, Lcom/memo/EventDeviceCheat;->throwOut()V

    return-void
.end method
