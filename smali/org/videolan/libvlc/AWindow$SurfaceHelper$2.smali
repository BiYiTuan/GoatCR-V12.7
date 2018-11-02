.class Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;
.super Ljava/lang/Object;
.source "AWindow.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V
    .locals 0
    .param p1, "this$1"    # Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->access$400(Lorg/videolan/libvlc/AWindow$SurfaceHelper;Landroid/view/Surface;)V

    .line 169
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    iget-object v0, v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$500(Lorg/videolan/libvlc/AWindow;)V

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 174
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 184
    return-void
.end method
