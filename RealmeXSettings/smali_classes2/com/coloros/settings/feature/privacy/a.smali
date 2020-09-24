.class public abstract Lcom/coloros/settings/feature/privacy/a;
.super Ljava/lang/Object;
.source "AbsSecureItem.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a;->a:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a;->b:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/coloros/settings/feature/privacy/a;->d:Z

    .line 24
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a;->e:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/coloros/settings/feature/privacy/a;->a()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/content/Context;I)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/a;->e:Ljava/lang/String;

    return-void
.end method

.method public abstract a(Landroid/content/Context;)Z
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/a;->e:Ljava/lang/String;

    return-object v0
.end method
