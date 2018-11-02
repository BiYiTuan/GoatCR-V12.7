.class Lcom/gemini/play/MyBackPreviewView$9;
.super Ljava/lang/Object;
.source "MyBackPreviewView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 193
    iput-object p1, p0, Lcom/gemini/play/MyBackPreviewView$9;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 196
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/gemini/play/MyBackPreviewView$9;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v2}, Lcom/gemini/play/MyBackPreviewView;->access$000(Lcom/gemini/play/MyBackPreviewView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 197
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ItemTime"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, "time":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyBackPreviewView$9;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v2}, Lcom/gemini/play/MyBackPreviewView;->access$300(Lcom/gemini/play/MyBackPreviewView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 199
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
