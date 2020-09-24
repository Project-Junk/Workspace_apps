.class public Lcom/nearme/instant/router/Instant;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/instant/router/Instant$FromBuilder;,
        Lcom/nearme/instant/router/Instant$Builder;,
        Lcom/nearme/instant/router/Instant$Req;,
        Lcom/nearme/instant/router/Instant$IStatisticsProvider;
    }
.end annotation


# static fields
.field public static final HOST_INSTANT:Ljava/lang/String; = "instant"

.field public static final PATH_APP:Ljava/lang/String; = "/app"

.field public static final SCHEME_OAPS:Ljava/lang/String; = "oaps"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 1

    new-instance v0, Lcom/nearme/instant/router/d/b;

    invoke-direct {v0, p0, p1}, Lcom/nearme/instant/router/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromBuilder()Lcom/nearme/instant/router/Instant$FromBuilder;
    .locals 1

    new-instance v0, Lcom/nearme/instant/router/d/c;

    invoke-direct {v0}, Lcom/nearme/instant/router/d/c;-><init>()V

    return-object v0
.end method

.method public static enableLog()V
    .locals 0

    invoke-static {}, Lcom/nearme/instant/router/g/b;->a()V

    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.2_ccfd188_180718"

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/nearme/instant/router/g/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFitPltVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/nearme/instant/router/g/j;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFitPltVersionStrict(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/nearme/instant/router/g/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstantOapsUri(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/nearme/instant/router/g/c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstantPlatformInstalled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/nearme/instant/router/g/j;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static setStatisticsProvider(Lcom/nearme/instant/router/Instant$IStatisticsProvider;)V
    .locals 1

    invoke-static {}, Lcom/nearme/instant/router/f/a;->a()Lcom/nearme/instant/router/f/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nearme/instant/router/f/a;->a(Lcom/nearme/instant/router/Instant$IStatisticsProvider;)V

    return-void
.end method
