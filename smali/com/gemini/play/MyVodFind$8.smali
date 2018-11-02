.class Lcom/gemini/play/MyVodFind$8;
.super Ljava/lang/Object;
.source "MyVodFind.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFind;->init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFind;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/gemini/play/MyVodFind$8;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/gemini/play/MyVodFind$8;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v0}, Lcom/gemini/play/MyVodFind;->access$300(Lcom/gemini/play/MyVodFind;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 195
    return-void
.end method
