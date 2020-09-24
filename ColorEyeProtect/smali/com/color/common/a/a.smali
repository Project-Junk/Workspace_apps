.class public final Lcom/color/common/a/a;
.super Landroid/database/ContentObserver;


# static fields
.field public static final a:Lcom/color/common/a/a;

.field private static b:Z

.field private static c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/color/common/a/a;

    invoke-direct {v0}, Lcom/color/common/a/a;-><init>()V

    sput-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "persist.sys.assert.panic"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/color/common/a/a;->b:Z

    const-string v1, "log_switch_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/color/common/a/a;->c:Landroid/net/Uri;

    invoke-static {}, Lcom/color/eyeprotect/ColorEyeProtectApp;->a()Landroid/content/Context;

    move-result-object v1

    const-string v3, "ColorEyeProtectApp.getsApplicationContext()"

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/color/common/a/a;->c:Landroid/net/Uri;

    check-cast v0, Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "tag"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/color/common/a/a;->b:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "tag"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "var2"

    invoke-static {p3, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/color/common/a/a;->b:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "tag"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/color/common/a/a;->b:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "tag"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/color/common/a/a;->b:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p0, "persist.sys.assert.panic"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/color/common/a/a;->b:Z

    return-void
.end method
