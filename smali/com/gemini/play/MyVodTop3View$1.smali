.class Lcom/gemini/play/MyVodTop3View$1;
.super Ljava/lang/Object;
.source "MyVodTop3View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTop3View;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTop3View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTop3View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTop3View;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/gemini/play/MyVodTop3View$1;->this$0:Lcom/gemini/play/MyVodTop3View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gemini/play/MyVodTop3View$1;->this$0:Lcom/gemini/play/MyVodTop3View;

    invoke-static {v0}, Lcom/gemini/play/MyVodTop3View;->access$000(Lcom/gemini/play/MyVodTop3View;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/gemini/play/MyVodTop3View$1;->this$0:Lcom/gemini/play/MyVodTop3View;

    invoke-static {v0}, Lcom/gemini/play/MyVodTop3View;->access$000(Lcom/gemini/play/MyVodTop3View;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    .line 68
    return-void
.end method
