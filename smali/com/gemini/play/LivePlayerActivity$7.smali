.class Lcom/gemini/play/LivePlayerActivity$7;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$7;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$7;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$100(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyPreviewView;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$7;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->getCurrentID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyPreviewView;->showPreviewList(I)V

    .line 460
    return-void
.end method
