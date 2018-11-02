.class Lcom/gemini/play/MyVodClassify2View$11;
.super Ljava/lang/Object;
.source "MyVodClassify2View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodClassify2View;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodClassify2View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodClassify2View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View$11;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View$11;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v0}, Lcom/gemini/play/MyVodClassify2View;->access$1300(Lcom/gemini/play/MyVodClassify2View;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View$11;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v2}, Lcom/gemini/play/MyVodClassify2View;->access$200(Lcom/gemini/play/MyVodClassify2View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 250
    return-void
.end method
