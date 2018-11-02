.class Lcom/gemini/play/MyVodFindView$8;
.super Ljava/lang/Object;
.source "MyVodFindView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFindView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFindView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFindView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView$8;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView$8;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodFindView;->hideFindView()V

    .line 231
    return-void
.end method
