.class public Lorg/cybergarage/b/c;
.super Lorg/cybergarage/http/g;


# instance fields
.field private b:Lorg/cybergarage/xml/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/http/g;-><init>()V

    invoke-static {}, Lorg/cybergarage/b/a;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/b/c;->c(Lorg/cybergarage/xml/b;)V

    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/b/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/b/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/cybergarage/http/g;-><init>(Lorg/cybergarage/http/g;)V

    invoke-virtual {p1}, Lorg/cybergarage/b/c;->F()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/b/c;->a(Lorg/cybergarage/xml/b;)V

    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/b/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/g;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/cybergarage/http/g;-><init>(Lorg/cybergarage/http/g;)V

    invoke-static {}, Lorg/cybergarage/b/a;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/b/c;->c(Lorg/cybergarage/xml/b;)V

    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/b/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method private H()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/b/c;->b:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method private c(Lorg/cybergarage/xml/b;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/b/c;->b:Lorg/cybergarage/xml/b;

    return-void
.end method


# virtual methods
.method public E()V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/b/c;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/b/c;->H()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public F()Lorg/cybergarage/xml/b;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/b/c;->H()Lorg/cybergarage/xml/b;

    move-result-object v0

    return-object v0
.end method

.method public G()Lorg/cybergarage/xml/b;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/b/c;->F()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Body"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->h(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lorg/cybergarage/xml/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cybergarage/b/c;->c(Lorg/cybergarage/xml/b;)V

    return-void
.end method

.method public b(Lorg/cybergarage/xml/b;)V
    .locals 2

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/xml/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/b/c;->g(Ljava/lang/String;)V

    return-void
.end method
