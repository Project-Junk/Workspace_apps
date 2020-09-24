.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.super Lcom/android/settings/core/a;
.source "BaseTimeZonePreferenceController.java"


# instance fields
.field private mOnClickListener:Lcom/android/settings/datetime/timezone/a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->mOnClickListener:Lcom/android/settings/datetime/timezone/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->mOnClickListener:Lcom/android/settings/datetime/timezone/a;

    invoke-interface {p1}, Lcom/android/settings/datetime/timezone/a;->onClick()V

    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method public setOnClickListener(Lcom/android/settings/datetime/timezone/a;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->mOnClickListener:Lcom/android/settings/datetime/timezone/a;

    return-void
.end method
