.class Lcom/gemini/play/MyVodInfoView$1;
.super Ljava/lang/Object;
.source "MyVodInfoView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodInfoView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodInfoView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/gemini/play/MyVodInfoView$1;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView$1;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-static {v0, p2}, Lcom/gemini/play/MyVodInfoView;->access$002(Lcom/gemini/play/MyVodInfoView;I)I

    .line 69
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView$1;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-static {v0}, Lcom/gemini/play/MyVodInfoView;->access$200(Lcom/gemini/play/MyVodInfoView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyVodInfoView$1;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-static {v1, p2}, Lcom/gemini/play/MyVodInfoView;->access$100(Lcom/gemini/play/MyVodInfoView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView$1;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodInfoView;->showViewTimeout()V

    .line 71
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 77
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView$1;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-static {v0}, Lcom/gemini/play/MyVodInfoView;->access$000(Lcom/gemini/play/MyVodInfoView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView$1;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-static {v0}, Lcom/gemini/play/MyVodInfoView;->access$300(Lcom/gemini/play/MyVodInfoView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyVodInfoView$1;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-static {v1}, Lcom/gemini/play/MyVodInfoView;->access$000(Lcom/gemini/play/MyVodInfoView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView$1;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-static {v0, v2}, Lcom/gemini/play/MyVodInfoView;->access$002(Lcom/gemini/play/MyVodInfoView;I)I

    .line 85
    return-void
.end method
