.class public Lcom/android/settings/notification/GentleDrawablePreferenceController;
.super Lcom/android/settings/core/a;
.source "GentleDrawablePreferenceController.java"


# static fields
.field static final ON:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mBackend:Lcom/android/settings/notification/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    new-instance p1, Lcom/android/settings/notification/k;

    invoke-direct {p1}, Lcom/android/settings/notification/k;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/GentleDrawablePreferenceController;->mBackend:Lcom/android/settings/notification/k;

    return-void
.end method

.method private showOnLockscreen()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/GentleDrawablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lock_screen_show_silent_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private showOnStatusBar()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/GentleDrawablePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method setBackend(Lcom/android/settings/notification/k;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/android/settings/notification/GentleDrawablePreferenceController;->mBackend:Lcom/android/settings/notification/k;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 49
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/notification/GentleDrawablePreferenceController;->showOnLockscreen()Z

    move-result v0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/GentleDrawablePreferenceController;->showOnStatusBar()Z

    move-result v1

    const v2, 0x7f0a0226

    .line 53
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    const v0, 0x7f080698

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const v0, 0x7f080696

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    const v0, 0x7f080697

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    const v0, 0x7f080695

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
