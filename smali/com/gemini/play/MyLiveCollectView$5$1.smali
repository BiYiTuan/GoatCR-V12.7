.class Lcom/gemini/play/MyLiveCollectView$5$1;
.super Ljava/lang/Object;
.source "MyLiveCollectView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyLiveCollectView$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/MyLiveCollectView$5;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyLiveCollectView$5;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/MyLiveCollectView$5;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/gemini/play/MyLiveCollectView$5$1;->this$1:Lcom/gemini/play/MyLiveCollectView$5;

    iput-object p2, p0, Lcom/gemini/play/MyLiveCollectView$5$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView$5$1;->val$id:Ljava/lang/String;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collect del num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyLiveCollectView$5$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView$5$1;->this$1:Lcom/gemini/play/MyLiveCollectView$5;

    iget-object v0, v0, Lcom/gemini/play/MyLiveCollectView$5;->this$0:Lcom/gemini/play/MyLiveCollectView;

    iget-object v1, p0, Lcom/gemini/play/MyLiveCollectView$5$1;->val$id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyLiveCollectView;->deleteData(I)Z

    .line 136
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView$5$1;->this$1:Lcom/gemini/play/MyLiveCollectView$5;

    iget-object v0, v0, Lcom/gemini/play/MyLiveCollectView$5;->this$0:Lcom/gemini/play/MyLiveCollectView;

    invoke-static {v0}, Lcom/gemini/play/MyLiveCollectView;->access$100(Lcom/gemini/play/MyLiveCollectView;)V

    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 139
    :cond_0
    return-void
.end method
