.class Lcom/gemini/play/VodPlayerList2Activity$6;
.super Landroid/os/Handler;
.source "VodPlayerList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerList2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerList2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

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

    .line 310
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 461
    :goto_0
    return-void

    .line 312
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    .line 313
    .local v1, "id0":Ljava/lang/String;
    sget-object v5, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v6, "find"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v6, "hot"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v6, "collect"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 314
    const/4 v5, 0x0

    sput-object v5, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 316
    :cond_0
    new-instance v5, Lcom/gemini/play/VodPlayerList2Activity$6$1;

    invoke-direct {v5, p0, v1}, Lcom/gemini/play/VodPlayerList2Activity$6$1;-><init>(Lcom/gemini/play/VodPlayerList2Activity$6;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerList2Activity$6$1;->start()V

    .line 323
    .end local v1    # "id0":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerList2Activity;->access$500(Lcom/gemini/play/VodPlayerList2Activity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 324
    sget-object v0, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    .line 325
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "page"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 326
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

    .line 327
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

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url_param:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 329
    sget-object v5, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    :cond_1
    move-object v3, v4

    .line 334
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

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseXML:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 337
    add-int/lit8 v5, v2, -0x1

    sget v6, Lcom/gemini/play/VODplayer;->page:I

    if-lt v5, v6, :cond_2

    .line 338
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageHideProgress()V

    goto/16 :goto_0

    .line 342
    :cond_2
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    const v7, 0x7f0b00e1

    invoke-virtual {v6, v7}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 344
    new-instance v5, Lcom/gemini/play/VodPlayerList2Activity$6$2;

    invoke-direct {v5, p0, v0, v3}, Lcom/gemini/play/VodPlayerList2Activity$6$2;-><init>(Lcom/gemini/play/VodPlayerList2Activity$6;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerList2Activity$6$2;->start()V

    goto/16 :goto_0

    .line 406
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "page":I
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "url_tmp":Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    .line 407
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerList2Activity;->access$500(Lcom/gemini/play/VodPlayerList2Activity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 409
    invoke-static {}, Lcom/gemini/play/VodPlayerList2Activity;->access$600()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 410
    invoke-static {v8}, Lcom/gemini/play/VodPlayerList2Activity;->access$602(Z)Z

    .line 411
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerList2Activity;->listtypeFocus()V

    .line 412
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5, v8}, Lcom/gemini/play/VodPlayerList2Activity;->access$702(Lcom/gemini/play/VodPlayerList2Activity;Z)Z

    .line 415
    :cond_3
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerList2Activity;->set_top_text()V

    goto/16 :goto_0

    .line 418
    :pswitch_3
    new-instance v5, Lcom/gemini/play/VodPlayerList2Activity$6$3;

    invoke-direct {v5, p0}, Lcom/gemini/play/VodPlayerList2Activity$6$3;-><init>(Lcom/gemini/play/VodPlayerList2Activity$6;)V

    .line 443
    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerList2Activity$6$3;->start()V

    goto/16 :goto_0

    .line 447
    :pswitch_4
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerList2Activity;->access$100(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyGridView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/gemini/play/MyGridView;->setFocusable(Z)V

    .line 448
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerList2Activity;->access$900(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyVodTypeView3;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/gemini/play/MyVodTypeView3;->setFocusable(Z)V

    .line 449
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerList2Activity;->access$1000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyVodFindView;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/gemini/play/MyVodFindView;->showFindView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :pswitch_5
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerList2Activity;->access$500(Lcom/gemini/play/VodPlayerList2Activity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 457
    :pswitch_6
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 310
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
