.class Lcom/gemini/play/VodPlayerListActivity$2;
.super Ljava/lang/Object;
.source "VodPlayerListActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerListActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$2;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 129
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$2;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerListActivity;->access$000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodView;->setSeclection(I)V

    .line 131
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$2;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerListActivity;->access$000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "mVodGrid onfocus"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$2;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerListActivity;->access$000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodView;->setSeclection(I)V

    .line 135
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$2;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerListActivity;->access$000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    goto :goto_0
.end method
