.class Lcom/gemini/play/VodPlayerInfoActivity$9;
.super Ljava/lang/Object;
.source "VodPlayerInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerInfoActivity;->init(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerInfoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$9;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity$9;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerInfoActivity;->finish()V

    .line 360
    return-void
.end method
