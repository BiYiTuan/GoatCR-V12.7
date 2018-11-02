.class Lcom/gemini/play/VodPlayerListActivity$6;
.super Ljava/lang/Object;
.source "VodPlayerListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerListActivity;->init_ui()V
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
    .line 265
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$6;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$6;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerListActivity;->access$500(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodFindView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyVodFindView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$6;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerListActivity;->access$500(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodFindView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyVodFindView;->hideFindView()V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$6;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerListActivity;->access$500(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodFindView;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->showFindView(Ljava/lang/String;)V

    goto :goto_0
.end method
