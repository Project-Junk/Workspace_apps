.class public final Lcom/android/settings/fuelgauge/batterytip/c/a;
.super Ljava/lang/Object;
.source "AppLabelPredicate.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/settings/fuelgauge/batterytip/c;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/android/settings/fuelgauge/batterytip/c/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/c/a;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/a;->a:Lcom/android/settings/fuelgauge/batterytip/c/a;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batterytip/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/a;->a:Lcom/android/settings/fuelgauge/batterytip/c/a;

    .line 39
    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/batterytip/c/a;->a:Lcom/android/settings/fuelgauge/batterytip/c/a;

    return-object p0
.end method


# virtual methods
.method public final synthetic test(Ljava/lang/Object;)Z
    .locals 1

    .line 29
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 1049
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/a;->b:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
