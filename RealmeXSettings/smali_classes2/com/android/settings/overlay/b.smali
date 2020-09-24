.class public abstract Lcom/android/settings/overlay/b;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/overlay/b$a;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FeatureFactory"

.field protected static sAppContext:Landroid/content/Context;

.field protected static sFactory:Lcom/android/settings/overlay/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 92
    sget-object v0, Lcom/android/settings/overlay/b;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;
    .locals 2

    .line 63
    sget-object v0, Lcom/android/settings/overlay/b;->sFactory:Lcom/android/settings/overlay/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    sget-object v0, Lcom/android/settings/overlay/b;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/overlay/b;->sAppContext:Landroid/content/Context;

    :cond_1
    const v0, 0x7f1205f2

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/overlay/b;

    sput-object p0, Lcom/android/settings/overlay/b;->sFactory:Lcom/android/settings/overlay/b;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    sget-object p0, Lcom/android/settings/overlay/b;->sFactory:Lcom/android/settings/overlay/b;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 78
    :goto_0
    new-instance v0, Lcom/android/settings/overlay/b$a;

    invoke-direct {v0, p0}, Lcom/android/settings/overlay/b$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getAccountFeatureProvider()Lcom/android/settings/accounts/a;
.end method

.method public abstract getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/q;
.end method

.method public abstract getAssistGestureFeatureProvider()Lcom/android/settings/gestures/a;
.end method

.method public abstract getAwareFeatureProvider()Lcom/android/settings/a/a;
.end method

.method public abstract getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/d;
.end method

.method public abstract getContextualCardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/d;
.end method

.method public abstract getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/b;
.end method

.method public abstract getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/a;
.end method

.method public abstract getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;
.end method

.method public abstract getLocaleFeatureProvider()Lcom/android/settings/localepicker/b;
.end method

.method public abstract getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;
.end method

.method public abstract getPanelFeatureProvider()Lcom/android/settings/panel/e;
.end method

.method public abstract getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;
.end method

.method public abstract getSearchFeatureProvider()Lcom/android/settings/search/c;
.end method

.method public abstract getSecurityFeatureProvider()Lcom/android/settings/security/f;
.end method

.method public abstract getSlicesFeatureProvider()Lcom/android/settings/slices/j;
.end method

.method public abstract getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/a;
.end method

.method public abstract getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/c;
.end method

.method public abstract getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/d;
.end method

.method public abstract getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/h;
.end method
