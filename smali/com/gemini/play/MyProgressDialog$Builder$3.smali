.class Lcom/gemini/play/MyProgressDialog$Builder$3;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyProgressDialog$Builder;->create()Lcom/gemini/play/MyProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyProgressDialog$Builder;

.field final synthetic val$dialog:Lcom/gemini/play/MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyProgressDialog$Builder;Lcom/gemini/play/MyProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyProgressDialog$Builder;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/gemini/play/MyProgressDialog$Builder$3;->this$0:Lcom/gemini/play/MyProgressDialog$Builder;

    iput-object p2, p0, Lcom/gemini/play/MyProgressDialog$Builder$3;->val$dialog:Lcom/gemini/play/MyProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder$3;->this$0:Lcom/gemini/play/MyProgressDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyProgressDialog$Builder;->access$000(Lcom/gemini/play/MyProgressDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyProgressDialog$Builder$3;->val$dialog:Lcom/gemini/play/MyProgressDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 179
    return-void
.end method
