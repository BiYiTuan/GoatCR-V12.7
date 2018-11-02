.class Lcom/gemini/play/MyListView1$4;
.super Ljava/lang/Object;
.source "MyListView1.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyListView1;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyListView1;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyListView1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyListView1;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/gemini/play/MyListView1$4;->this$0:Lcom/gemini/play/MyListView1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/gemini/play/MyListView1$4;->this$0:Lcom/gemini/play/MyListView1;

    invoke-static {v2}, Lcom/gemini/play/MyListView1;->access$100(Lcom/gemini/play/MyListView1;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 209
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ItemId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyListView1$4;->this$0:Lcom/gemini/play/MyListView1;

    invoke-static {v2}, Lcom/gemini/play/MyListView1;->access$000(Lcom/gemini/play/MyListView1;)Lcom/gemini/play/ListViewInterface;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 211
    const/4 v2, 0x1

    return v2
.end method
