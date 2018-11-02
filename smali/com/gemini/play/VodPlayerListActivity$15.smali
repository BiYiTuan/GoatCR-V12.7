.class Lcom/gemini/play/VodPlayerListActivity$15;
.super Ljava/lang/Object;
.source "VodPlayerListActivity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerListActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$15;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 819
    packed-switch p1, :pswitch_data_0

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 821
    :pswitch_0
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity$15;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerListActivity;->access$1000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTypeView2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyVodTypeView2;->getSelectIndex()I

    move-result v0

    .line 822
    .local v0, "select":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTypePressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 823
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity$15;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerListActivity;->access$1300(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodClassify2View;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gemini/play/MyVodClassify2View;->showClassifyList(I)V

    goto :goto_0

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
