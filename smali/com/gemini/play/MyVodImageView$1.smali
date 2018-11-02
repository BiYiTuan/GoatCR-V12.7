.class Lcom/gemini/play/MyVodImageView$1;
.super Ljava/lang/Object;
.source "MyVodImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodImageView;->playImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodImageView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodImageView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/gemini/play/MyVodImageView$1;->this$0:Lcom/gemini/play/MyVodImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gemini/play/MyVodImageView$1;->this$0:Lcom/gemini/play/MyVodImageView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodImageView;->hideView()V

    .line 52
    return-void
.end method
