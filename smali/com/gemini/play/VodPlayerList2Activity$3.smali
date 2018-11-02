.class Lcom/gemini/play/VodPlayerList2Activity$3;
.super Ljava/lang/Object;
.source "VodPlayerList2Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerList2Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerList2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerList2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$3;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

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
    .line 137
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity$3;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerList2Activity;->access$100(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyGridView;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/gemini/play/MyGridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 138
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ItemId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "id":Ljava/lang/String;
    const-string v3, "ItemType"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "type":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity$3;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/gemini/play/MySimpleAdapterVodView;->setSeclection(I)V

    .line 142
    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity$3;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    .line 143
    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity$3;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/gemini/play/VodPlayerList2Activity;->openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
