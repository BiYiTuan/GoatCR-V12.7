.class Lcom/gemini/play/MyPickerView$1;
.super Landroid/os/Handler;
.source "MyPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyPickerView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyPickerView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 74
    iget-object v0, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-static {v0}, Lcom/gemini/play/MyPickerView;->access$000(Lcom/gemini/play/MyPickerView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/MyPickerView;->access$002(Lcom/gemini/play/MyPickerView;F)F

    .line 77
    iget-object v0, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-static {v0}, Lcom/gemini/play/MyPickerView;->access$100(Lcom/gemini/play/MyPickerView;)Lcom/gemini/play/MyPickerView$MyTimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-static {v0}, Lcom/gemini/play/MyPickerView;->access$100(Lcom/gemini/play/MyPickerView;)Lcom/gemini/play/MyPickerView$MyTimerTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyPickerView$MyTimerTask;->cancel()Z

    .line 80
    iget-object v0, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/MyPickerView;->access$102(Lcom/gemini/play/MyPickerView;Lcom/gemini/play/MyPickerView$MyTimerTask;)Lcom/gemini/play/MyPickerView$MyTimerTask;

    .line 81
    iget-object v0, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-static {v0}, Lcom/gemini/play/MyPickerView;->access$200(Lcom/gemini/play/MyPickerView;)V

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-virtual {v0}, Lcom/gemini/play/MyPickerView;->invalidate()V

    .line 86
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    iget-object v1, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-static {v1}, Lcom/gemini/play/MyPickerView;->access$000(Lcom/gemini/play/MyPickerView;)F

    move-result v1

    iget-object v2, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-static {v2}, Lcom/gemini/play/MyPickerView;->access$000(Lcom/gemini/play/MyPickerView;)F

    move-result v2

    iget-object v3, p0, Lcom/gemini/play/MyPickerView$1;->this$0:Lcom/gemini/play/MyPickerView;

    invoke-static {v3}, Lcom/gemini/play/MyPickerView;->access$000(Lcom/gemini/play/MyPickerView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/gemini/play/MyPickerView;->access$002(Lcom/gemini/play/MyPickerView;F)F

    goto :goto_0
.end method
