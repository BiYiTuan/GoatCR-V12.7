.class Lcom/gemini/play/MyBackTypeView$3;
.super Ljava/lang/Object;
.source "MyBackTypeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 106
    iput-object p1, p0, Lcom/gemini/play/MyBackTypeView$3;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 108
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView$3;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->listFocus()V

    .line 109
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView$3;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->showViewTimeout()V

    .line 110
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView$3;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->listFocus()V

    .line 115
    return-void
.end method
