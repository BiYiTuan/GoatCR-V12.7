.class Lcom/gemini/play/VodPlayerListActivity$16;
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
    .line 833
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 8
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 836
    packed-switch p1, :pswitch_data_0

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 838
    :pswitch_0
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v3}, Lcom/gemini/play/VodPlayerListActivity;->listtypeFocus()V

    .line 839
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerListActivity;->access$1000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTypeView2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MyVodTypeView2;->selectIndex()V

    .line 840
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v3, v5}, Lcom/gemini/play/VodPlayerListActivity;->access$802(Lcom/gemini/play/VodPlayerListActivity;Z)Z

    goto :goto_0

    .line 845
    :pswitch_1
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerListActivity;->access$1000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTypeView2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MyVodTypeView2;->getSelectIndex()I

    move-result v0

    .line 846
    .local v0, "select":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTypePressed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "VODplayer.url_param:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 847
    if-ge v0, v7, :cond_0

    .line 848
    sget-object v3, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 849
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&itype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&iyear=0&iarea=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 850
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v6}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageAddList(Ljava/lang/String;II)V

    .line 851
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerListActivity;->access$1300(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodClassify2View;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MyVodClassify2View;->hideClassifyList()V

    .line 853
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/gemini/play/VodPlayerListActivity;->get_top_title(II)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerListActivity;->access$1100(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTopView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/gemini/play/MyVodTopView;->set_vod_top_center_text(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 861
    .end local v0    # "select":I
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerListActivity;->access$1000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTypeView2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MyVodTypeView2;->getSelectIndex()I

    move-result v0

    .line 862
    .restart local v0    # "select":I
    if-ge v0, v7, :cond_0

    .line 863
    sget-object v3, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 864
    sput-object p2, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 865
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v6}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageAddList(Ljava/lang/String;II)V

    .line 866
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerListActivity;->access$1300(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodClassify2View;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MyVodClassify2View;->hideClassifyList()V

    .line 868
    const-string v3, "&itype="

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    const-string v4, "&iyear"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "type":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 870
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerListActivity;->access$1100(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTopView;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    const v5, 0x7f0b00cb

    invoke-virtual {v4, v5}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gemini/play/MyVodTopView;->set_vod_top_center_text(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 871
    :cond_1
    invoke-static {v2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 872
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/gemini/play/VodPlayerListActivity;->get_top_title(II)Ljava/lang/String;

    move-result-object v1

    .line 873
    .restart local v1    # "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity$16;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerListActivity;->access$1100(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTopView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/gemini/play/MyVodTopView;->set_vod_top_center_text(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 836
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
