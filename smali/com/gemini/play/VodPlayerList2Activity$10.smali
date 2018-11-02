.class Lcom/gemini/play/VodPlayerList2Activity$10;
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
    .line 622
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$10;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

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

    .line 624
    packed-switch p1, :pswitch_data_0

    .line 643
    :goto_0
    return-void

    .line 626
    :pswitch_0
    sget-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 627
    sput-object p2, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$10;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    sget-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    sget v2, Lcom/gemini/play/VODplayer;->page:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;II)V

    goto :goto_0

    .line 632
    :pswitch_1
    sget-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 633
    sput-object p2, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$10;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    sget-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    sget v2, Lcom/gemini/play/VODplayer;->page:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;II)V

    goto :goto_0

    .line 638
    :pswitch_2
    sget-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 639
    sput-object p2, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$10;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    sget-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    sget v2, Lcom/gemini/play/VODplayer;->page:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;II)V

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
