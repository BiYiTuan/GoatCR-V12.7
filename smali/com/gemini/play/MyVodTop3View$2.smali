.class Lcom/gemini/play/MyVodTop3View$2;
.super Ljava/lang/Object;
.source "MyVodTop3View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTop3View;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTop3View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTop3View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTop3View;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/gemini/play/MyVodTop3View$2;->this$0:Lcom/gemini/play/MyVodTop3View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/gemini/play/MyVodTop3View$2;->this$0:Lcom/gemini/play/MyVodTop3View;

    invoke-static {v0}, Lcom/gemini/play/MyVodTop3View;->access$100(Lcom/gemini/play/MyVodTop3View;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 76
    return-void
.end method
