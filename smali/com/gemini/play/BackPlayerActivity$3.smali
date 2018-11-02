.class Lcom/gemini/play/BackPlayerActivity$3;
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
    .line 167
    iput-object p1, p0, Lcom/gemini/play/BackPlayerActivity$3;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity$3;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayerActivity;->access$100(Lcom/gemini/play/BackPlayerActivity;)Lcom/gemini/play/MyBackListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gemini/play/MyBackListView;->showListView(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity$3;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayerActivity;->access$000(Lcom/gemini/play/BackPlayerActivity;)Lcom/gemini/play/MyBackTypeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->hideTypeList()V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
