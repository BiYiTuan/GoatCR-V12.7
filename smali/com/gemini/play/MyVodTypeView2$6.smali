.class Lcom/gemini/play/MyVodTypeView2$6;
.super Ljava/lang/Object;
.source "MyVodTypeView2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTypeView2;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView2;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView2;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView2$6;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2$6;->this$0:Lcom/gemini/play/MyVodTypeView2;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodTypeView2;->selectIndex(I)V

    .line 200
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2$6;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-static {v0}, Lcom/gemini/play/MyVodTypeView2;->access$200(Lcom/gemini/play/MyVodTypeView2;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/gemini/play/MyVodTypeView2$6;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-static {v2}, Lcom/gemini/play/MyVodTypeView2;->access$300(Lcom/gemini/play/MyVodTypeView2;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 201
    return-void
.end method
