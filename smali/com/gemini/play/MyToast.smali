.class public Lcom/gemini/play/MyToast;
.super Ljava/lang/Object;
.source "MyToast.java"


# static fields
.field static message:Landroid/widget/TextView;

.field static toastStart:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/gemini/play/MyToast;->toastStart:Landroid/widget/Toast;

    .line 16
    sput-object v0, Lcom/gemini/play/MyToast;->message:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hide()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 20
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 21
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f09006d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 24
    .local v1, "toastRoot":Landroid/view/View;
    const v2, 0x7f0700f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/gemini/play/MyToast;->message:Landroid/widget/TextView;

    .line 25
    sget-object v2, Lcom/gemini/play/MyToast;->message:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/gemini/play/MyToast;->toastStart:Landroid/widget/Toast;

    .line 28
    sget-object v2, Lcom/gemini/play/MyToast;->toastStart:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 29
    sget-object v2, Lcom/gemini/play/MyToast;->toastStart:Landroid/widget/Toast;

    invoke-virtual {v2, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 30
    sget-object v2, Lcom/gemini/play/MyToast;->toastStart:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 31
    sget-object v2, Lcom/gemini/play/MyToast;->toastStart:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 32
    return-void
.end method

.method static show()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/gemini/play/MyToast;->toastStart:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/gemini/play/MyToast;->toastStart:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    :cond_0
    return-void
.end method
