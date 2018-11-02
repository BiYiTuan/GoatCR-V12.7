.class Lcom/gemini/play/BackPlayer2Activity$5;
.super Ljava/lang/Object;
.source "BackPlayer2Activity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/BackPlayer2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayer2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayer2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$5;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 226
    packed-switch p1, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$5;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v1}, Lcom/gemini/play/BackPlayer2Activity;->access$000(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackTypeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyBackTypeView;->showTypeList()V

    goto :goto_0

    .line 232
    :pswitch_1
    sput-object p2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$5;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/gemini/play/BACKplayer;->playVideoFull(Landroid/app/Activity;Ljava/lang/String;)V

    .line 236
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewPressed onListPressed cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 238
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackGetVideoIntroduction(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "preview":Ljava/lang/String;
    sput-object p2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$5;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v1}, Lcom/gemini/play/BackPlayer2Activity;->access$100(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackPreviewView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyBackPreviewView;->showTextDays(I)V

    .line 243
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$5;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v1}, Lcom/gemini/play/BackPlayer2Activity;->access$100(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackPreviewView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gemini/play/MyBackPreviewView;->showPreviewList(Ljava/lang/String;)V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewPressed preview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v0    # "preview":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$5;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v1}, Lcom/gemini/play/BackPlayer2Activity;->access$100(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackPreviewView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyBackPreviewView;->listFocus()V

    .line 263
    const-string v1, "onPreviewPressed listFocus"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
