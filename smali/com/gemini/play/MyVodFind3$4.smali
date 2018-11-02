.class Lcom/gemini/play/MyVodFind3$4;
.super Ljava/lang/Object;
.source "MyVodFind3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFind3;->init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFind3;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind3;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3$4;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3$4;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v0}, Lcom/gemini/play/MyVodFind3;->access$300(Lcom/gemini/play/MyVodFind3;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 113
    return-void
.end method
