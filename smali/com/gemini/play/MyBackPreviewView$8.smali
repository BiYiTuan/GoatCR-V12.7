.class Lcom/gemini/play/MyBackPreviewView$8;
.super Ljava/lang/Object;
.source "MyBackPreviewView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackPreviewView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackPreviewView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackPreviewView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackPreviewView;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/gemini/play/MyBackPreviewView$8;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 182
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/gemini/play/MyBackPreviewView$8;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v4}, Lcom/gemini/play/MyBackPreviewView;->access$000(Lcom/gemini/play/MyBackPreviewView;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 183
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "ItemTime"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, "t":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "222 callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/play/MyBackPreviewView$8;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v5}, Lcom/gemini/play/MyBackPreviewView;->access$100(Lcom/gemini/play/MyBackPreviewView;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/gemini/play/MyBackPreviewView$8;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v6}, Lcom/gemini/play/MyBackPreviewView;->access$200(Lcom/gemini/play/MyBackPreviewView;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gemini/play/MyBackPreviewView$8;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v5}, Lcom/gemini/play/MyBackPreviewView;->access$100(Lcom/gemini/play/MyBackPreviewView;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/gemini/play/MyBackPreviewView$8;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v6}, Lcom/gemini/play/MyBackPreviewView;->access$200(Lcom/gemini/play/MyBackPreviewView;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->fromDateStringToLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    div-long v2, v4, v6

    .line 189
    .local v2, "time":J
    iget-object v4, p0, Lcom/gemini/play/MyBackPreviewView$8;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v4}, Lcom/gemini/play/MyBackPreviewView;->access$300(Lcom/gemini/play/MyBackPreviewView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 190
    return-void
.end method
