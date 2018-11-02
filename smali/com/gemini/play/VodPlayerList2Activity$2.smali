.class Lcom/gemini/play/VodPlayerList2Activity$2;
.super Ljava/lang/Object;
.source "VodPlayerList2Activity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerList2Activity;->onCreate(Landroid/os/Bundle;)V
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
    .line 121
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$2;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 124
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$2;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodView;->setSeclection(I)V

    .line 126
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$2;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "mVodGrid onfocus"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$2;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodView;->setSeclection(I)V

    .line 130
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$2;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    goto :goto_0
.end method
