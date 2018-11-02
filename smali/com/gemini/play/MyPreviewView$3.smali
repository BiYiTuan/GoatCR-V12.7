.class Lcom/gemini/play/MyPreviewView$3;
.super Ljava/lang/Object;
.source "MyPreviewView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 178
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView$3;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 181
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/gemini/play/MyPreviewView$3;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v1}, Lcom/gemini/play/MyPreviewView;->access$000(Lcom/gemini/play/MyPreviewView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 182
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gemini/play/MyPreviewView$3;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v1}, Lcom/gemini/play/MyPreviewView;->showViewTimeout()V

    .line 183
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
    .line 188
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
