.class public Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorDualClockLocationPreferenceController.java"


# static fields
.field private static final CHOICE_RESOURCE:[I

.field private static final INDEX_DESK_WIDGET:I = 0x1

.field private static final INDEX_NONE:I = -0x1

.field private static final INDEX_SCREEN_LOCK:I = 0x0

.field private static final INDEX_SCREEN_LOCK_AND_DESK_WIDGET:I = 0x2

.field public static final KEY_SHOW_LOCATION:Ljava/lang/String; = "key_show_location"


# instance fields
.field private mCurIndex:I

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->CHOICE_RESOURCE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f120883
        0x7f12087c
        0x7f120884
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_show_location"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;ILandroidx/preference/Preference;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->setLocationValue(ILandroidx/preference/Preference;)V

    return-void
.end method

.method private getCurIndex()I
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->f(Landroid/content/Context;)Z

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private setLocationValue(ILandroidx/preference/Preference;)V
    .locals 4

    .line 136
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    .line 137
    iget p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    .line 138
    :goto_1
    iget v3, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    if-eq v3, v2, :cond_2

    if-ne v3, v1, :cond_3

    :cond_2
    move v0, v2

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->c(Landroid/content/Context;Z)V

    .line 140
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->b(Landroid/content/Context;Z)V

    .line 141
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private updatePreferenceState(Landroidx/preference/Preference;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->getCurIndex()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    .line 83
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private updateSummary(Landroidx/preference/Preference;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->getCurIndex()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    .line 88
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    if-ltz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->CHOICE_RESOURCE:[I

    iget v2, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1201ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->updateVisibility()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    sget-object v2, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->CHOICE_RESOURCE:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 117
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->CHOICE_RESOURCE:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mCurIndex:I

    new-instance v3, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController$1;

    invoke-direct {v3, p0, p1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v2, v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12088a

    .line 130
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->updatePreferenceState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateVisibility()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->updatePreferenceState(Landroidx/preference/Preference;)V

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method
