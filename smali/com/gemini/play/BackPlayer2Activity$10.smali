.class Lcom/gemini/play/BackPlayer2Activity$10;
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
    .line 467
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$10;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 469
    packed-switch p1, :pswitch_data_0

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 472
    :pswitch_0
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$10;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    sget-object v1, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/gemini/play/BACKplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
