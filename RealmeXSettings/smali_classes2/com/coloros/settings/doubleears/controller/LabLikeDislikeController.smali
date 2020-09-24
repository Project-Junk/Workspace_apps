.class public Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;
.super Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;
.source "LabLikeDislikeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final DOUBLE_EAR_BUSSINESS_TAG:Ljava/lang/String; = "DoubleEar"

.field private static final DOUBLE_EAR_LIKE_OR_NOT_EVENT_KEY:Ljava/lang/String; = "double_ear_page_lab_like_key_event_key"

.field public static final LAB_DISLIKE_DOUBLE_EAR:I = 0x1

.field private static final LAB_LIKE_DISLIKE_KEY:Ljava/lang/String; = "double_ear_page_lab_like_key"

.field public static final LAB_LIKE_DOUBLE_EAR:I


# instance fields
.field private final mPreferenceFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    const-string v0, "double_ear_page_lab_like_key"

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mPreferenceFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method private toastShow(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 112
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 115
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mToast:Landroid/widget/Toast;

    .line 117
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mToast:Landroid/widget/Toast;

    const/16 p2, 0x50

    const/4 p3, 0x0

    const/16 v0, 0x64

    invoke-virtual {p1, p2, p3, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected dcsState(I)V
    .locals 4

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "double_ear_page_lab_like_key_event_key"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "double_ear_page_lab_like_key"

    const-string v1, "dcsState: will upload."

    .line 105
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoubleEar"

    const/4 v3, 0x0

    .line 106
    invoke-static {p1, v2, v1, v0, v3}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "double_ear_page_lab_like_key"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 62
    instance-of p1, p2, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 63
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "double_ear_page_lab_like_key"

    const v2, 0x7f121432

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0, v3}, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->dcsState(I)V

    .line 65
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3}, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->toastShow(Landroid/content/Context;Ljava/lang/String;I)V

    .line 66
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 68
    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->dcsState(I)V

    .line 69
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3}, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->toastShow(Landroid/content/Context;Ljava/lang/String;I)V

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public onResume()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_ear_page_lab_like_key"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->mPreferenceFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 97
    instance-of v2, v1, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;

    if-eqz v2, :cond_0

    .line 98
    check-cast v1, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;

    .line 1089
    iput v0, v1, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->a:I

    .line 1090
    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
