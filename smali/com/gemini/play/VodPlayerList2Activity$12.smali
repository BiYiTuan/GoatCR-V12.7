.class Lcom/gemini/play/VodPlayerList2Activity$12;
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
    .line 667
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$12;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 671
    packed-switch p1, :pswitch_data_0

    .line 678
    :goto_0
    return-void

    .line 673
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$12;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerList2Activity;->access$1102(Lcom/gemini/play/VodPlayerList2Activity;Z)Z

    .line 674
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$12;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerList2Activity;->finish()V

    goto :goto_0

    .line 671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
