.class public Lcom/coloros/settings/feature/homepage/HomepageFeature;
.super Lcom/color/injector/adaptor/g;
.source "HomepageFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "homepage_tile"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSubSettingsTheme(I)I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f130409

    return p1
.end method

.method public getSwitchDefaultFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 36
    :cond_0
    const-class p1, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isValidFragment(Ljava/lang/String;Z)Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    sget-object v1, Lcom/coloros/settings/c/a;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 51
    sget-object v1, Lcom/coloros/settings/c/a;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public setSettingsActivity(Lcom/android/settings/SettingsActivity;Z)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 69
    invoke-static {p1, v0, p2}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public setSubActivityTheme(Lcom/android/settings/SettingsActivity;ZLjava/lang/String;)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    .line 58
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.settings.Settings"

    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f130405

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    :cond_2
    :goto_0
    return-void
.end method
