.class Lcom/gemini/play/MyVodTypeView3$1;
.super Ljava/lang/Object;
.source "MyVodTypeView3.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTypeView3;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView3;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView3;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView3$1;->this$0:Lcom/gemini/play/MyVodTypeView3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 91
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/gemini/play/MyVodTypeView3$1;->this$0:Lcom/gemini/play/MyVodTypeView3;

    iget-object v2, v2, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 92
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ItemId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyVodTypeView3$1;->this$0:Lcom/gemini/play/MyVodTypeView3;

    invoke-static {v2}, Lcom/gemini/play/MyVodTypeView3;->access$000(Lcom/gemini/play/MyVodTypeView3;)Lcom/gemini/play/ListViewInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 94
    return-void
.end method
