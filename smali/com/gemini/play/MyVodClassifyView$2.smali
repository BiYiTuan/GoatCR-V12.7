.class Lcom/gemini/play/MyVodClassifyView$2;
.super Ljava/lang/Object;
.source "MyVodClassifyView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodClassifyView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodClassifyView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodClassifyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodClassifyView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/gemini/play/MyVodClassifyView$2;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/gemini/play/MyVodClassifyView$2;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-static {v3}, Lcom/gemini/play/MyVodClassifyView;->access$000(Lcom/gemini/play/MyVodClassifyView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 85
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ItemID"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "cmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/MyVodClassifyView$2;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-static {v3}, Lcom/gemini/play/MyVodClassifyView;->access$100(Lcom/gemini/play/MyVodClassifyView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 89
    return-void
.end method
