.class public final Lcom/coloros/settings/feature/weather/module/city/f;
.super Ljava/lang/Object;
.source "SearchCityHelper.java"


# instance fields
.field a:Lcom/coloros/settings/feature/weather/module/city/b$c;

.field b:Ljava/lang/String;

.field private c:Lcom/coloros/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 64
    invoke-static {p0}, Lcom/coloros/settings/feature/weather/a/d;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private a()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/f;->c:Lcom/coloros/a/b;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/coloros/settings/feature/weather/module/city/f$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/module/city/f$1;-><init>(Lcom/coloros/settings/feature/weather/module/city/f;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/f;->c:Lcom/coloros/a/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/feature/weather/module/city/b$c;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iput-object p3, p0, Lcom/coloros/settings/feature/weather/module/city/f;->a:Lcom/coloros/settings/feature/weather/module/city/b$c;

    .line 45
    iput-object p2, p0, Lcom/coloros/settings/feature/weather/module/city/f;->b:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/module/city/f;->a()V

    .line 47
    invoke-static {}, Lcom/coloros/settings/feature/weather/module/a/a;->a()Lcom/coloros/settings/feature/weather/module/a/a;

    move-result-object p3

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/f;->c:Lcom/coloros/a/b;

    invoke-virtual {p3, p1, p2, v0}, Lcom/coloros/settings/feature/weather/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/a/b;)V

    :cond_1
    :goto_0
    return-void
.end method
