.class Lcom/gemini/play/MyPreviewView$1;
.super Ljava/lang/Object;
.source "MyPreviewView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyPreviewView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyPreviewView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyPreviewView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyPreviewView;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 92
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v3}, Lcom/gemini/play/MyPreviewView;->access$000(Lcom/gemini/play/MyPreviewView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 93
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ItemTime"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "PreviewTime":Ljava/lang/String;
    const-string v3, "ItemBack"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, "PreviewBack":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v6}, Lcom/gemini/play/MyPreviewView;->access$100(Lcom/gemini/play/MyPreviewView;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v7}, Lcom/gemini/play/MyPreviewView;->access$200(Lcom/gemini/play/MyPreviewView;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":00"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->fromDateStringToLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    div-long v4, v6, v8

    .line 96
    .local v4, "time":J
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v3}, Lcom/gemini/play/MyPreviewView;->access$300(Lcom/gemini/play/MyPreviewView;)Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v6}, Lcom/gemini/play/MyPreviewView;->access$300(Lcom/gemini/play/MyPreviewView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0098

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v3, Lcom/gemini/play/MyPreviewView$1$1;

    invoke-direct {v3, p0, v4, v5}, Lcom/gemini/play/MyPreviewView$1$1;-><init>(Lcom/gemini/play/MyPreviewView$1;J)V

    .line 157
    invoke-virtual {v3}, Lcom/gemini/play/MyPreviewView$1$1;->start()V

    goto :goto_0
.end method
