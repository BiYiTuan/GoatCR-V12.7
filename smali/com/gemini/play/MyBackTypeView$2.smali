.class Lcom/gemini/play/MyBackTypeView$2;
.super Ljava/lang/Object;
.source "MyBackTypeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackTypeView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackTypeView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackTypeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackTypeView;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/gemini/play/MyBackTypeView$2;->this$0:Lcom/gemini/play/MyBackTypeView;

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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 95
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView$2;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyBackTypeView;->access$000(Lcom/gemini/play/MyBackTypeView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 96
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ItemID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackTypeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "n":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/gemini/play/BACKplayer;->typePasswordOK:Z

    if-ne v3, v4, :cond_1

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView$2;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyBackTypeView;->access$100(Lcom/gemini/play/MyBackTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView$2;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-static {v3, v4, v0}, Lcom/gemini/play/MyBackTypeView;->access$200(Lcom/gemini/play/MyBackTypeView;ILjava/lang/String;)V

    goto :goto_0
.end method
