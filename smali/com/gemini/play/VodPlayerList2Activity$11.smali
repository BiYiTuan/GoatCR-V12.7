.class Lcom/gemini/play/VodPlayerList2Activity$11;
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
    .line 646
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$11;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

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

    .line 650
    packed-switch p1, :pswitch_data_0

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 652
    :pswitch_0
    sget-object v0, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v1, "find"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v1, "collect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v1, "hot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$11;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->access$402(Lcom/gemini/play/VodPlayerList2Activity;I)I

    .line 654
    invoke-static {}, Lcom/gemini/play/VODplayer;->listClear()V

    .line 655
    sput v2, Lcom/gemini/play/VODplayer;->page:I

    .line 656
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

    .line 657
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$11;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddVod(I)V

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
