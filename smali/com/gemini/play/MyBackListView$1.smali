.class Lcom/gemini/play/MyBackListView$1;
.super Ljava/lang/Object;
.source "MyBackListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackListView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackListView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/gemini/play/MyBackListView$1;->this$0:Lcom/gemini/play/MyBackListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gemini/play/MyBackListView$1;->this$0:Lcom/gemini/play/MyBackListView;

    invoke-static {v0}, Lcom/gemini/play/MyBackListView;->access$000(Lcom/gemini/play/MyBackListView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 74
    return-void
.end method
