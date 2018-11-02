.class Lcom/gemini/play/MyVodTopView$1;
.super Ljava/lang/Object;
.source "MyVodTopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTopView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTopView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTopView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTopView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/gemini/play/MyVodTopView$1;->this$0:Lcom/gemini/play/MyVodTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gemini/play/MyVodTopView$1;->this$0:Lcom/gemini/play/MyVodTopView;

    invoke-static {v0}, Lcom/gemini/play/MyVodTopView;->access$000(Lcom/gemini/play/MyVodTopView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 69
    return-void
.end method
