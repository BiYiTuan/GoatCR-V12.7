.class Lcom/gemini/play/BackPlayerActivity$5;
.super Ljava/lang/Object;
.source "BackPlayerActivity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/BackPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayerActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/gemini/play/BackPlayerActivity$5;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 202
    packed-switch p1, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 205
    :pswitch_1
    sput-object p2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lcom/gemini/play/BackPlayerActivity$5;->this$0:Lcom/gemini/play/BackPlayerActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/gemini/play/BACKplayer;->playVideoFull(Landroid/app/Activity;Ljava/lang/String;)V

    .line 208
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewPressed onListPressed cmd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 210
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/gemini/play/BACKplayer;->playbackGetVideoIntroduction(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "preview":Ljava/lang/String;
    sput-object p2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/gemini/play/BackPlayerActivity$5;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-static {v3}, Lcom/gemini/play/BackPlayerActivity;->access$200(Lcom/gemini/play/BackPlayerActivity;)Lcom/gemini/play/MyBackPreviewView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/gemini/play/MyBackPreviewView;->showPreviewList(Ljava/lang/String;)V

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewPressed preview = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 220
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 221
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "d":Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 224
    iput v5, v1, Landroid/os/Message;->what:I

    .line 225
    iget-object v3, p0, Lcom/gemini/play/BackPlayerActivity$5;->this$0:Lcom/gemini/play/BackPlayerActivity;

    iget-object v3, v3, Lcom/gemini/play/BackPlayerActivity;->pHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/gemini/play/BackPlayerActivity$5;->this$0:Lcom/gemini/play/BackPlayerActivity;

    iget-object v3, v3, Lcom/gemini/play/BackPlayerActivity;->pHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/gemini/play/BackPlayerActivity$5;->this$0:Lcom/gemini/play/BackPlayerActivity;

    iget-object v3, v3, Lcom/gemini/play/BackPlayerActivity;->pHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 232
    .end local v0    # "d":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "preview":Ljava/lang/String;
    :pswitch_3
    iget-object v3, p0, Lcom/gemini/play/BackPlayerActivity$5;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-static {v3}, Lcom/gemini/play/BackPlayerActivity;->access$200(Lcom/gemini/play/BackPlayerActivity;)Lcom/gemini/play/MyBackPreviewView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MyBackPreviewView;->listFocus()V

    .line 233
    const-string v3, "onPreviewPressed listFocus"

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
