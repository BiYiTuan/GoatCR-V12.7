.class Lcom/gemini/play/MyDialog$Builder$4;
.super Ljava/lang/Object;
.source "MyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyDialog$Builder;

.field final synthetic val$dialog:Lcom/gemini/play/MyDialog;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyDialog$Builder;Lcom/gemini/play/MyDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyDialog$Builder;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/gemini/play/MyDialog$Builder$4;->this$0:Lcom/gemini/play/MyDialog$Builder;

    iput-object p2, p0, Lcom/gemini/play/MyDialog$Builder$4;->val$dialog:Lcom/gemini/play/MyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder$4;->this$0:Lcom/gemini/play/MyDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog$Builder;->access$100(Lcom/gemini/play/MyDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyDialog$Builder$4;->val$dialog:Lcom/gemini/play/MyDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 195
    return-void
.end method
