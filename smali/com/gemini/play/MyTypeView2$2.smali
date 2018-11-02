.class Lcom/gemini/play/MyTypeView2$2;
.super Ljava/lang/Object;
.source "MyTypeView2.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyTypeView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyTypeView2;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyTypeView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyTypeView2;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/gemini/play/MyTypeView2$2;->this$0:Lcom/gemini/play/MyTypeView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 206
    :pswitch_0
    invoke-static {p2}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "n":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-ne v1, v2, :cond_1

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/MyTypeView2$2;->this$0:Lcom/gemini/play/MyTypeView2;

    invoke-static {v1}, Lcom/gemini/play/MyTypeView2;->access$100(Lcom/gemini/play/MyTypeView2;)Lcom/gemini/play/ListViewInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/MyTypeView2$2;->this$0:Lcom/gemini/play/MyTypeView2;

    invoke-static {v1, v2, p2}, Lcom/gemini/play/MyTypeView2;->access$200(Lcom/gemini/play/MyTypeView2;ILjava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
