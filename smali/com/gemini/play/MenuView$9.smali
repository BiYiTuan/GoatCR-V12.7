.class final Lcom/gemini/play/MenuView$9;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MenuView;->decodeActivity(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$inx:I

.field final synthetic val$rHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/gemini/play/MenuView$9;->val$_this:Landroid/content/Context;

    iput-object p2, p0, Lcom/gemini/play/MenuView$9;->val$rHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/gemini/play/MenuView$9;->val$inx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 9
    .param p1, "arg0"    # Landroid/widget/RadioGroup;
    .param p2, "arg1"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 536
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    .line 538
    .local v3, "radioButtonId":I
    iget-object v4, p0, Lcom/gemini/play/MenuView$9;->val$_this:Landroid/content/Context;

    const-string v5, "data"

    invoke-static {v4, v5, v8}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 540
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/gemini/play/MenuView$9;->val$rHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 541
    iget-object v4, p0, Lcom/gemini/play/MenuView$9;->val$_this:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/play/MenuView$9;->val$_this:Landroid/content/Context;

    const v6, 0x7f0b006a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 544
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 570
    :goto_1
    iget-object v4, p0, Lcom/gemini/play/MenuView$9;->val$rHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 571
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 572
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 573
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "inx"

    iget v5, p0, Lcom/gemini/play/MenuView$9;->val$inx:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 575
    const/16 v4, 0xc

    iput v4, v2, Landroid/os/Message;->what:I

    .line 576
    iget-object v4, p0, Lcom/gemini/play/MenuView$9;->val$rHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 578
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 543
    :cond_1
    iget-object v4, p0, Lcom/gemini/play/MenuView$9;->val$_this:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/play/MenuView$9;->val$_this:Landroid/content/Context;

    const v6, 0x7f0b0068

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 547
    :pswitch_0
    const-string v4, "decode"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 548
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 553
    :pswitch_1
    const-string v4, "decode"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 554
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 558
    :pswitch_2
    const-string v4, "decode"

    const/4 v5, 0x2

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 559
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 563
    :pswitch_3
    const-string v4, "decode"

    const/4 v5, 0x3

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 564
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 544
    :pswitch_data_0
    .packed-switch 0x7f07002b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
