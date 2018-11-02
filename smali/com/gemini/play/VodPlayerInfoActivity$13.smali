.class Lcom/gemini/play/VodPlayerInfoActivity$13;
.super Ljava/lang/Object;
.source "VodPlayerInfoActivity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerInfoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$13;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 639
    packed-switch p1, :pswitch_data_0

    .line 646
    :goto_0
    return-void

    .line 642
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity$13;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity$13;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerInfoActivity;->access$100(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity$13;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerInfoActivity;->access$000(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/gemini/play/VodPlayerInfoActivity;->openVideoActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity$13;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerInfoActivity;->access$600(Lcom/gemini/play/VodPlayerInfoActivity;)Lcom/gemini/play/MyVodSelectionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyVodSelectionsView;->hideSelectionsView()V

    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
