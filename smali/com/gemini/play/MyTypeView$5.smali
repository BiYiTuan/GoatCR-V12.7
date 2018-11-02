.class Lcom/gemini/play/MyTypeView$5;
.super Ljava/lang/Object;
.source "MyTypeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyTypeView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyTypeView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyTypeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyTypeView;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/gemini/play/MyTypeView$5;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 180
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/gemini/play/MyTypeView$5;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v2}, Lcom/gemini/play/MyTypeView;->access$400(Lcom/gemini/play/MyTypeView;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 181
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemChar"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "t0":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyTypeView$5;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v2, v1, p3}, Lcom/gemini/play/MyTypeView;->grid_enter(Ljava/lang/String;I)V

    .line 183
    return-void
.end method
