.class public Lorg/cybergarage/xml/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/xml/a;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/cybergarage/xml/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/a;)V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/xml/a;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/a;->a(Lorg/cybergarage/xml/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/xml/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/cybergarage/xml/a;)V
    .locals 1

    invoke-virtual {p1}, Lorg/cybergarage/xml/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/xml/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/xml/a;->b:Ljava/lang/String;

    return-void
.end method
