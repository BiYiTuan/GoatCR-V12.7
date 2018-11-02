.class Lcom/gemini/play/MyBackPreviewView$12;
.super Landroid/os/Handler;
.source "MyBackPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyBackPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackPreviewView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackPreviewView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackPreviewView;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/gemini/play/MyBackPreviewView$12;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 588
    iget v0, p1, Landroid/os/Message;->what:I

    .line 594
    return-void
.end method
