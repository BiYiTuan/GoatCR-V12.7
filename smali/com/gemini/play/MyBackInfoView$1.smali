.class Lcom/gemini/play/MyBackInfoView$1;
.super Ljava/lang/Object;
.source "MyBackInfoView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackInfoView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackInfoView;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/gemini/play/MyBackInfoView$1;->this$0:Lcom/gemini/play/MyBackInfoView;

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
    .line 124
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

    .line 125
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView$1;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-static {v0, p2}, Lcom/gemini/play/MyBackInfoView;->access$002(Lcom/gemini/play/MyBackInfoView;I)I

    .line 126
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 132
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/gemini/play/MyBackInfoView$1;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-static {v1}, Lcom/gemini/play/MyBackInfoView;->access$100(Lcom/gemini/play/MyBackInfoView;)I

    move-result v1

    iget-object v2, p0, Lcom/gemini/play/MyBackInfoView$1;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-static {v2}, Lcom/gemini/play/MyBackInfoView;->access$000(Lcom/gemini/play/MyBackInfoView;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeekBar startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MyBackInfoView$1;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-static {v2}, Lcom/gemini/play/MyBackInfoView;->access$100(Lcom/gemini/play/MyBackInfoView;)I

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

    .line 139
    iget-object v1, p0, Lcom/gemini/play/MyBackInfoView$1;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-static {v1}, Lcom/gemini/play/MyBackInfoView;->access$200(Lcom/gemini/play/MyBackInfoView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 140
    return-void
.end method
