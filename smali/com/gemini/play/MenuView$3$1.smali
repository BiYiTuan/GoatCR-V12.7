.class Lcom/gemini/play/MenuView$3$1;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MenuView$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MenuView$3;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/gemini/play/MenuView$3;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MenuView$3;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/gemini/play/MenuView$3$1;->this$0:Lcom/gemini/play/MenuView$3;

    iput-object p2, p0, Lcom/gemini/play/MenuView$3$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/gemini/play/MenuView$3$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "value":Ljava/lang/String;
    const-string v1, "11223300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/gemini/play/MenuView$3$1;->this$0:Lcom/gemini/play/MenuView$3;

    iget-object v1, v1, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->access$500(Landroid/content/Context;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/MenuView$3$1;->this$0:Lcom/gemini/play/MenuView$3;

    iget-object v1, v1, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
