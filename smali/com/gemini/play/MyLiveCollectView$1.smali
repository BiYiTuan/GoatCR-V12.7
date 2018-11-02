.class Lcom/gemini/play/MyLiveCollectView$1;
.super Ljava/lang/Object;
.source "MyLiveCollectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyLiveCollectView;->showView(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyLiveCollectView;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyLiveCollectView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyLiveCollectView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/gemini/play/MyLiveCollectView$1;->this$0:Lcom/gemini/play/MyLiveCollectView;

    iput-object p2, p0, Lcom/gemini/play/MyLiveCollectView$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView$1;->this$0:Lcom/gemini/play/MyLiveCollectView;

    iget-object v1, p0, Lcom/gemini/play/MyLiveCollectView$1;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gemini/play/MyLiveCollectView;->access$000(Lcom/gemini/play/MyLiveCollectView;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView$1;->this$0:Lcom/gemini/play/MyLiveCollectView;

    invoke-static {v0}, Lcom/gemini/play/MyLiveCollectView;->access$100(Lcom/gemini/play/MyLiveCollectView;)V

    .line 83
    return-void
.end method
