.class public Lorg/cybergarage/http/i;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lorg/cybergarage/http/h;

.field private b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lorg/cybergarage/http/h;Ljava/net/Socket;)V
    .locals 1

    const-string v0, "Cyber.HTTPServerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/cybergarage/http/i;->a:Lorg/cybergarage/http/h;

    iput-object p2, p0, Lorg/cybergarage/http/i;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lorg/cybergarage/http/j;

    iget-object v1, p0, Lorg/cybergarage/http/i;->b:Ljava/net/Socket;

    invoke-direct {v0, v1}, Lorg/cybergarage/http/j;-><init>(Ljava/net/Socket;)V

    invoke-virtual {v0}, Lorg/cybergarage/http/j;->d()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/cybergarage/http/e;

    invoke-direct {v1}, Lorg/cybergarage/http/e;-><init>()V

    invoke-virtual {v1, v0}, Lorg/cybergarage/http/e;->c(Lorg/cybergarage/http/j;)V

    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/http/e;->R()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/cybergarage/http/i;->a:Lorg/cybergarage/http/h;

    invoke-virtual {v2, v1}, Lorg/cybergarage/http/h;->a(Lorg/cybergarage/http/e;)V

    invoke-virtual {v1}, Lorg/cybergarage/http/e;->Q()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {v0}, Lorg/cybergarage/http/j;->e()Z

    goto :goto_0
.end method
