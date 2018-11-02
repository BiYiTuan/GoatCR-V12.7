.class Lcom/gemini/play/MyPickerView$MyTimerTask;
.super Ljava/util/TimerTask;
.source "MyPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/gemini/play/MyPickerView;


# direct methods
.method public constructor <init>(Lcom/gemini/play/MyPickerView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyPickerView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/gemini/play/MyPickerView$MyTimerTask;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/gemini/play/MyPickerView$MyTimerTask;->handler:Landroid/os/Handler;

    .line 336
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/gemini/play/MyPickerView$MyTimerTask;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gemini/play/MyPickerView$MyTimerTask;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    return-void
.end method
