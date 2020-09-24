.class public Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;
.super Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;
.source "DefaultSlideNotificationTypePreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;


# static fields
.field public static final DEFAULT_SLIDE_TYPE:Ljava/lang/String; = "default_slide_notification"

.field public static final SLIDE_TYPE:Ljava/lang/String; = "slide_notification"

.field private static final TAG:Ljava/lang/String; = "DefaultSlideNotificationTypePreferenceController"


# instance fields
.field private mDefaultSlideIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->setSingleSelect(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_slide_notification"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->mDefaultSlideIndex:I

    .line 60
    iget v0, p0, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->mDefaultSlideIndex:I

    const-string v1, "slide_notification"

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const v0, 0x7f120ef0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const v0, 0x7f120eef

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 65
    :goto_0
    iget p1, p0, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->mDefaultSlideIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->setDefaultEntry(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    instance-of v0, v0, Lcom/color/support/preference/ColorListPreference;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public handlePreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_slide_notification"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p2, :cond_0

    const p2, 0x7f120ef0

    .line 45
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f120eef

    .line 47
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "default_slide_notification"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;->mDefaultSlideIndex:I

    return-void
.end method
