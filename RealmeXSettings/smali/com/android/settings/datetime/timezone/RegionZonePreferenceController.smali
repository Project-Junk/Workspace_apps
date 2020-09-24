.class public Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.source "RegionZonePreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "region_zone"


# instance fields
.field private mIsClickable:Z

.field private mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "region_zone"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121bcb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    .line 1060
    iget-object v4, v4, Lcom/android/settings/datetime/timezone/c;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 51
    iget-object v4, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    .line 1076
    iget-object v4, v4, Lcom/android/settings/datetime/timezone/c;->g:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    .line 49
    invoke-static {v0, v1, v2}, Lcom/android/settings/datetime/timezone/b;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneInfo()Lcom/android/settings/datetime/timezone/c;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mIsClickable:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mIsClickable:Z

    return-void
.end method

.method public setTimeZoneInfo(Lcom/android/settings/datetime/timezone/c;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
