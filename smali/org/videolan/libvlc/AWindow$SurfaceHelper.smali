.class Lorg/videolan/libvlc/AWindow$SurfaceHelper;
.super Ljava/lang/Object;
.source "AWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceHelper"
.end annotation


# instance fields
.field private final mId:I

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private final mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lorg/videolan/libvlc/AWindow;


# direct methods
.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p2, "id"    # I
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 75
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 189
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 76
    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    .line 77
    iput-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 78
    iput-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 79
    iput-object p4, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 80
    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 81
    return-void

    :cond_0
    move-object v0, v1

    .line 189
    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/view/Surface;
    .param p4, "x3"    # Landroid/view/SurfaceHolder;
    .param p5, "x4"    # Lorg/videolan/libvlc/AWindow$1;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;)V
    .locals 2
    .param p2, "id"    # I
    .param p3, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    const/4 v1, 0x0

    .line 61
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 189
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 62
    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    .line 63
    iput-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 64
    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 65
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 66
    return-void

    :cond_0
    move-object v0, v1

    .line 189
    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/view/SurfaceView;
    .param p4, "x3"    # Lorg/videolan/libvlc/AWindow$1;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;)V

    return-void
.end method

.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;)V
    .locals 2
    .param p2, "id"    # I
    .param p3, "textureView"    # Landroid/view/TextureView;

    .prologue
    const/4 v1, 0x0

    .line 68
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 189
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 69
    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    .line 70
    iput-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 71
    iput-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 72
    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 73
    return-void

    :cond_0
    move-object v0, v1

    .line 189
    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/view/TextureView;
    .param p4, "x3"    # Lorg/videolan/libvlc/AWindow$1;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;)V

    return-void
.end method

.method static synthetic access$300(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$400(Lorg/videolan/libvlc/AWindow$SurfaceHelper;Landroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachSurface()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    .line 106
    return-void
.end method

.method private attachSurfaceView()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 93
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    .line 94
    return-void
.end method

.method private attachTextureView()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 99
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    .line 100
    return-void
.end method

.method private createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    return-object v0
.end method

.method private releaseSurfaceTexture()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 123
    :cond_0
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    iget v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$000(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 86
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    iget v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-static {v0, v1, v2}, Lorg/videolan/libvlc/AWindow;->access$100(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V

    .line 87
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$200(Lorg/videolan/libvlc/AWindow;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachSurfaceView()V

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachTextureView()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachSurface()V

    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iput-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 127
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    iget v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    invoke-static {v0, v1, v2}, Lorg/videolan/libvlc/AWindow;->access$100(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V

    .line 128
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 130
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->releaseSurfaceTexture()V

    .line 131
    return-void
.end method
