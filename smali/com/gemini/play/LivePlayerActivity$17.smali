.class Lcom/gemini/play/LivePlayerActivity$17;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/LivePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 936
    packed-switch p1, :pswitch_data_0

    .line 971
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 938
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyListView;->hidePlayList()V

    .line 940
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLivePressed data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 941
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jufeng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0, p2, v2, v2}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    .line 943
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$500(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyInfoView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$800(Lcom/gemini/play/LivePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    :cond_3
    sget-boolean v0, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v0, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 946
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0, p2}, Lcom/gemini/play/LivePlayerActivity;->access$700(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_4
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0, p2, v2, v2}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    .line 949
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$500(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyInfoView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :pswitch_2
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$900(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyTypeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyTypeView;->showTypeList()V

    goto/16 :goto_0

    .line 962
    :pswitch_3
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v0, v0, Lcom/gemini/play/LivePlayerActivity;->onSettingPressed:Lcom/gemini/play/ListViewInterface;

    invoke-static {v0}, Lcom/gemini/play/MyLiveSettingView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 963
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0, p2}, Lcom/gemini/play/MyLiveSettingView;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 968
    :pswitch_4
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$17;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0, p2, v2, v2}, Lcom/gemini/play/LivePlayerActivity;->access$1000(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
