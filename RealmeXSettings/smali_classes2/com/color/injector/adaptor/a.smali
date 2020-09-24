.class public Lcom/color/injector/adaptor/a;
.super Ljava/lang/Object;
.source "Adaptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAdaptor(Landroid/app/Application;)Z
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lcom/color/injector/adaptor/a;->initAdaptor(Landroid/app/Application;Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method

.method public static initAdaptor(Landroid/app/Application;Ljava/io/InputStream;)Z
    .locals 0

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/color/injector/adaptor/b;->a(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-static {p0, p1}, Lcom/color/injector/adaptor/a;->initConfig(Landroid/app/Application;Ljava/io/InputStream;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static initConfig(Landroid/app/Application;Ljava/io/InputStream;)Z
    .locals 0

    .line 52
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/color/injector/adaptor/f;->a(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 53
    invoke-static {}, Lcom/color/injector/adaptor/j;->a()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected init()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 64
    invoke-static {}, Lcom/color/injector/adaptor/j;->b()Z

    move-result v0

    return v0
.end method

.method public isExpEnabled()Z
    .locals 1

    .line 1041
    sget v0, Lcom/color/injector/adaptor/j;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStyleEnabled(I)Z
    .locals 1

    .line 1045
    sget v0, Lcom/color/injector/adaptor/j;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
