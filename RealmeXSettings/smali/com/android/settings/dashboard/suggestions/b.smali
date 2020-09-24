.class public Lcom/android/settings/dashboard/suggestions/b;
.super Ljava/lang/Object;
.source "SuggestionFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/suggestions/a;


# instance fields
.field private final a:Lcom/android/settingslib/core/instrumentation/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/b;->a:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ComponentName;
    .locals 3

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings.intelligence"

    const-string v2, "com.android.settings.intelligence.suggestions.SuggestionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "suggestions"

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1
    .param p2    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 66
    const-class v0, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 68
    :cond_0
    const-class v0, Lcom/android/settings/wallpaper/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {p1}, Lcom/android/settings/wallpaper/a;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 70
    :cond_1
    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 72
    :cond_2
    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSuggestionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSuggestionActivity;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 74
    :cond_3
    const-class v0, Lcom/android/settings/password/ScreenLockSuggestionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    invoke-static {p1}, Lcom/android/settings/password/ScreenLockSuggestionActivity;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 76
    :cond_4
    const-class v0, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    invoke-static {p1}, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 78
    :cond_5
    const-class v0, Lcom/android/settings/Settings$NightDisplaySuggestionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    invoke-static {p1}, Lcom/android/settings/display/a;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 80
    :cond_6
    const-class v0, Lcom/android/settings/notification/ZenSuggestionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 81
    invoke-static {p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
