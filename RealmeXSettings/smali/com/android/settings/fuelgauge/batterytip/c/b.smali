.class public final Lcom/android/settings/fuelgauge/batterytip/c/b;
.super Ljava/lang/Object;
.source "AppRestrictionPredicate.java"

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
.field private static a:Lcom/android/settings/fuelgauge/batterytip/c/b;


# instance fields
.field private b:Landroid/app/AppOpsManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/b;->b:Landroid/app/AppOpsManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/c/b;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/b;->a:Lcom/android/settings/fuelgauge/batterytip/c/b;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batterytip/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/b;->a:Lcom/android/settings/fuelgauge/batterytip/c/b;

    .line 39
    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/batterytip/c/b;->a:Lcom/android/settings/fuelgauge/batterytip/c/b;

    return-object p0
.end method


# virtual methods
.method public final synthetic test(Ljava/lang/Object;)Z
    .locals 3

    .line 29
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 1049
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/b;->b:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
