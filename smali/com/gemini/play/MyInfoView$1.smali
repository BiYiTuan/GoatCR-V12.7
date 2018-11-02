.class Lcom/gemini/play/MyInfoView$1;
.super Ljava/lang/Object;
.source "MyInfoView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyInfoView;->init_ui()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/gemini/play/MyInfoView$1;->this$0:Lcom/gemini/play/MyInfoView;

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
    .line 168
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

    .line 169
    iget-object v0, p0, Lcom/gemini/play/MyInfoView$1;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-static {v0, p2}, Lcom/gemini/play/MyInfoView;->access$002(Lcom/gemini/play/MyInfoView;I)I

    .line 170
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 176
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/gemini/play/MyInfoView$1;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-static {v1}, Lcom/gemini/play/MyInfoView;->access$100(Lcom/gemini/play/MyInfoView;)I

    move-result v1

    iget-object v2, p0, Lcom/gemini/play/MyInfoView$1;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-static {v2}, Lcom/gemini/play/MyInfoView;->access$000(Lcom/gemini/play/MyInfoView;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeekBar startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MyInfoView$1;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-static {v2}, Lcom/gemini/play/MyInfoView;->access$100(Lcom/gemini/play/MyInfoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/gemini/play/MyInfoView$1;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-static {v1}, Lcom/gemini/play/MyInfoView;->access$200(Lcom/gemini/play/MyInfoView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 184
    return-void
.end method
