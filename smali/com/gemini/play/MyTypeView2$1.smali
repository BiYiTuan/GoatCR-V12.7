.class Lcom/gemini/play/MyTypeView2$1;
.super Ljava/lang/Object;
.source "MyTypeView2.java"

# interfaces
.implements Lcom/gemini/play/MyPickerView$onSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyTypeView2;->set_list()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyTypeView2;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyTypeView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyTypeView2;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/gemini/play/MyTypeView2$1;->this$0:Lcom/gemini/play/MyTypeView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/gemini/play/MyTypeView2$1;->this$0:Lcom/gemini/play/MyTypeView2;

    invoke-static {v0, p1}, Lcom/gemini/play/MyTypeView2;->access$002(Lcom/gemini/play/MyTypeView2;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    return-void
.end method
