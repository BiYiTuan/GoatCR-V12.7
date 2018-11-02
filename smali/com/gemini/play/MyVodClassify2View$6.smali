.class Lcom/gemini/play/MyVodClassify2View$6;
.super Ljava/lang/Object;
.source "MyVodClassify2View.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 176
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View$6;->this$0:Lcom/gemini/play/MyVodClassify2View;

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
    .line 178
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View$6;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v2}, Lcom/gemini/play/MyVodClassify2View;->access$800(Lcom/gemini/play/MyVodClassify2View;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 179
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ItemID"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View$6;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v2, v0}, Lcom/gemini/play/MyVodClassify2View;->access$302(Lcom/gemini/play/MyVodClassify2View;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View$6;->this$0:Lcom/gemini/play/MyVodClassify2View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&itype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View$6;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v4}, Lcom/gemini/play/MyVodClassify2View;->access$100(Lcom/gemini/play/MyVodClassify2View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&iyear="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View$6;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v4}, Lcom/gemini/play/MyVodClassify2View;->access$300(Lcom/gemini/play/MyVodClassify2View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&iarea="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View$6;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v4}, Lcom/gemini/play/MyVodClassify2View;->access$400(Lcom/gemini/play/MyVodClassify2View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gemini/play/MyVodClassify2View;->access$202(Lcom/gemini/play/MyVodClassify2View;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View$6;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v2}, Lcom/gemini/play/MyVodClassify2View;->access$700(Lcom/gemini/play/MyVodClassify2View;)Lcom/gemini/play/MySimpleAdapterTypeListView2;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/gemini/play/MySimpleAdapterTypeListView2;->setCurrentIndex(I)V

    .line 184
    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View$6;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v2}, Lcom/gemini/play/MyVodClassify2View;->access$700(Lcom/gemini/play/MyVodClassify2View;)Lcom/gemini/play/MySimpleAdapterTypeListView2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gemini/play/MySimpleAdapterTypeListView2;->notifyDataSetChanged()V

    .line 187
    return-void
.end method
