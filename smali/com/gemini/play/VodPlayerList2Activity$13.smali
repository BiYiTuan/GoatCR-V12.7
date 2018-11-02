.class Lcom/gemini/play/VodPlayerList2Activity$13;
.super Ljava/lang/Object;
.source "VodPlayerList2Activity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


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
    .line 682
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$13;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 685
    packed-switch p1, :pswitch_data_0

    .line 707
    :goto_0
    return-void

    .line 687
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$13;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerList2Activity;->listtypeFocus()V

    .line 689
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$13;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->access$702(Lcom/gemini/play/VodPlayerList2Activity;Z)Z

    goto :goto_0

    .line 694
    :pswitch_1
    sget-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&itype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&iyear=0&iarea=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$13;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    sget-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;II)V

    goto :goto_0

    .line 700
    :pswitch_2
    sget-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 701
    sput-object p2, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$13;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    sget-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;II)V

    .line 703
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$13;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerList2Activity;->access$1200(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyVodClassify2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyVodClassify2View;->hideClassifyList()V

    goto :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
