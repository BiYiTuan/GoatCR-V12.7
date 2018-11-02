.class Lcom/gemini/play/VodPlayerListActivity$7;
.super Landroid/os/Handler;
.source "VodPlayerListActivity.java"


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
    .line 350
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x0

    .line 353
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 526
    :goto_0
    return-void

    .line 355
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    .line 356
    .local v1, "id0":Ljava/lang/String;
    const/4 v5, 0x0

    sput-object v5, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 357
    new-instance v5, Lcom/gemini/play/VodPlayerListActivity$7$1;

    invoke-direct {v5, p0, v1}, Lcom/gemini/play/VodPlayerListActivity$7$1;-><init>(Lcom/gemini/play/VodPlayerListActivity$7;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerListActivity$7$1;->start()V

    .line 364
    .end local v1    # "id0":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerListActivity;->access$600(Lcom/gemini/play/VodPlayerListActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 365
    sget-object v0, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    .line 366
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "page"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 367
    .local v2, "page":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/vod_xml.php?type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/gemini/play/MGplayer;->get_key_value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "url_tmp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url_tmp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 369
    sget-object v5, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    :cond_0
    move-object v3, v4

    .line 374
    .local v3, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "page:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " VODplayer.page:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/gemini/play/VODplayer;->page:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 376
    add-int/lit8 v5, v2, -0x1

    sget v6, Lcom/gemini/play/VODplayer;->page:I

    if-lt v5, v6, :cond_1

    .line 377
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageHideProgress()V

    goto/16 :goto_0

    .line 381
    :cond_1
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    const v7, 0x7f0b00e1

    invoke-virtual {v6, v7}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 383
    new-instance v5, Lcom/gemini/play/VodPlayerListActivity$7$2;

    invoke-direct {v5, p0, v0, v3}, Lcom/gemini/play/VodPlayerListActivity$7$2;-><init>(Lcom/gemini/play/VodPlayerListActivity$7;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerListActivity$7$2;->start()V

    goto/16 :goto_0

    .line 477
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "page":I
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "url_tmp":Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerListActivity;->access$000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    .line 478
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerListActivity;->access$600(Lcom/gemini/play/VodPlayerListActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 480
    invoke-static {}, Lcom/gemini/play/VodPlayerListActivity;->access$700()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 481
    invoke-static {v8}, Lcom/gemini/play/VodPlayerListActivity;->access$702(Z)Z

    .line 482
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerListActivity;->listtypeFocus()V

    .line 483
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v5, v8}, Lcom/gemini/play/VodPlayerListActivity;->access$802(Lcom/gemini/play/VodPlayerListActivity;Z)Z

    .line 486
    :cond_2
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerListActivity;->set_top_text()V

    goto/16 :goto_0

    .line 489
    :pswitch_3
    new-instance v5, Lcom/gemini/play/VodPlayerListActivity$7$3;

    invoke-direct {v5, p0}, Lcom/gemini/play/VodPlayerListActivity$7$3;-><init>(Lcom/gemini/play/VodPlayerListActivity$7;)V

    .line 508
    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerListActivity$7$3;->start()V

    goto/16 :goto_0

    .line 512
    :pswitch_4
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerListActivity;->access$100(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyGridView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/gemini/play/MyGridView;->setFocusable(Z)V

    .line 513
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerListActivity;->access$1000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTypeView2;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/gemini/play/MyVodTypeView2;->setFocusable(Z)V

    .line 514
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerListActivity;->access$500(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodFindView;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/gemini/play/MyVodFindView;->showFindView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :pswitch_5
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerListActivity;->access$600(Lcom/gemini/play/VodPlayerListActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 522
    :pswitch_6
    iget-object v5, p0, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerListActivity;->access$000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
