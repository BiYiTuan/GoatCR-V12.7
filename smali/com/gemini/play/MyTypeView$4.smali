.class Lcom/gemini/play/MyTypeView$4;
.super Ljava/lang/Object;
.source "MyTypeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 168
    iput-object p1, p0, Lcom/gemini/play/MyTypeView$4;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/gemini/play/MyTypeView$4;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v1}, Lcom/gemini/play/MyTypeView;->access$300(Lcom/gemini/play/MyTypeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/gemini/play/MyTypeView$4;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v1}, Lcom/gemini/play/MyTypeView;->access$100(Lcom/gemini/play/MyTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 173
    return-void
.end method
