.class Lcom/gemini/play/VodPlayerListActivity$14;
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
    .line 766
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 770
    packed-switch p1, :pswitch_data_0

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 772
    :pswitch_0
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2, v4}, Lcom/gemini/play/VodPlayerListActivity;->access$402(Lcom/gemini/play/VodPlayerListActivity;I)I

    .line 773
    invoke-static {}, Lcom/gemini/play/VODplayer;->listClear()V

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ItemId data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 775
    sput v4, Lcom/gemini/play/VODplayer;->page:I

    .line 776
    sget-object v2, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 777
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v2, p2}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageAddList(Ljava/lang/String;)V

    .line 779
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/gemini/play/VodPlayerListActivity;->get_top_title(II)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerListActivity;->access$1100(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTopView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/gemini/play/MyVodTopView;->set_vod_top_center_text(Ljava/lang/String;)V

    goto :goto_0

    .line 787
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2, v3}, Lcom/gemini/play/VodPlayerListActivity;->access$402(Lcom/gemini/play/VodPlayerListActivity;I)I

    .line 788
    sget-object v2, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 789
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, p2, v3}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageAddList(Ljava/lang/String;I)V

    goto :goto_0

    .line 793
    :pswitch_2
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2, v3}, Lcom/gemini/play/VodPlayerListActivity;->access$1200(Lcom/gemini/play/VodPlayerListActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 796
    :pswitch_3
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v2}, Lcom/gemini/play/VodPlayerListActivity;->exitActivity()V

    goto :goto_0

    .line 799
    :pswitch_4
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerListActivity;->access$1000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTypeView2;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/gemini/play/MyVodTypeView2;->setFocusable(Z)V

    .line 800
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2, v3}, Lcom/gemini/play/VodPlayerListActivity;->access$802(Lcom/gemini/play/VodPlayerListActivity;Z)Z

    .line 801
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v2}, Lcom/gemini/play/VodPlayerListActivity;->listFocus()V

    goto :goto_0

    .line 805
    :pswitch_5
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerListActivity;->access$1000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTypeView2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gemini/play/MyVodTypeView2;->getSelectIndex()I

    move-result v0

    .line 806
    .local v0, "select":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTypePressed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 807
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 808
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$14;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerListActivity;->access$1300(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodClassify2View;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/gemini/play/MyVodClassify2View;->showClassifyList(I)V

    goto/16 :goto_0

    .line 770
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
