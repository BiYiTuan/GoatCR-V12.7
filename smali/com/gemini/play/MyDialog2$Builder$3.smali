.class Lcom/gemini/play/MyDialog2$Builder$3;
.super Ljava/lang/Object;
.source "MyDialog2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyDialog2$Builder;->create()Lcom/gemini/play/MyDialog2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyDialog2$Builder;

.field final synthetic val$dialog:Lcom/gemini/play/MyDialog2;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyDialog2$Builder;Lcom/gemini/play/MyDialog2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyDialog2$Builder;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/gemini/play/MyDialog2$Builder$3;->this$0:Lcom/gemini/play/MyDialog2$Builder;

    iput-object p2, p0, Lcom/gemini/play/MyDialog2$Builder$3;->val$dialog:Lcom/gemini/play/MyDialog2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder$3;->this$0:Lcom/gemini/play/MyDialog2$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog2$Builder;->access$000(Lcom/gemini/play/MyDialog2$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyDialog2$Builder$3;->val$dialog:Lcom/gemini/play/MyDialog2;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 175
    return-void
.end method
