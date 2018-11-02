.class Lcom/gemini/play/BackPlayer2Activity$7;
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
    .line 295
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$7;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 299
    packed-switch p1, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$7;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->access$300(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gemini/play/MyBackListView;->showListView(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$7;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->access$000(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackTypeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->hideTypeList()V

    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$7;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->access$300(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyBackListView;->listFocus()V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
