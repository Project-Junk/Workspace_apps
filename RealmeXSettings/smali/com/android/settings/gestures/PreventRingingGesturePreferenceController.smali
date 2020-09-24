.class public Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;
.super Lcom/android/settingslib/core/a;
.source "PreventRingingGesturePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/widget/RadioButtonPreference$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/android/settingslib/core/lifecycle/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;
    }
.end annotation


# instance fields
.field a:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settings/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/android/settings/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/content/Context;

.field private h:Lcom/android/settings/widget/VideoPreference;

.field private i:Z

.field private j:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const-string v0, "key_video_paused"

    .line 55
    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->d:Ljava/lang/String;

    const-string v0, "gesture_prevent_ringing_video"

    .line 56
    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->e:Ljava/lang/String;

    const-string v0, "gesture_prevent_ringing_category"

    .line 57
    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->f:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->g:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    .line 193
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->a:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 2069
    iput-object p0, v0, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    .line 197
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->a:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 4

    .line 120
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1182
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x385badaf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x3b606a19

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "prevent_ringing_option_vibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "prevent_ringing_option_mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    .line 121
    :goto_2
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "volume_hush_gesture"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq v2, p1, :cond_5

    .line 123
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->a:Landroidx/preference/PreferenceCategory;

    const v0, 0x7f12109d

    const-string v1, "prevent_ringing_option_vibrate"

    .line 88
    invoke-direct {p0, v1, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->a(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->b:Lcom/android/settings/widget/RadioButtonPreference;

    const v0, 0x7f121099

    const-string v1, "prevent_ringing_option_mute"

    .line 89
    invoke-direct {p0, v1, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->a(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->c:Lcom/android/settings/widget/RadioButtonPreference;

    .line 91
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->a:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 92
    new-instance v1, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;-><init>(Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;Landroidx/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->j:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;

    :cond_1
    const-string v0, "gesture_prevent_ringing_video"

    .line 95
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/VideoPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->h:Lcom/android/settings/widget/VideoPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_prevent_ringing_category"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_volumeHushGestureEnabled"

    .line 101
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_video_paused"

    .line 153
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->i:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->j:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1217
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->h:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_1

    .line 1254
    iget-boolean v0, v0, Lcom/android/settings/widget/VideoPreference;->e:Z

    .line 176
    iput-boolean v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->i:Z

    .line 177
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->h:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->a()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->j:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1213
    iget-object v2, v0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->j:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;->onChange(ZLandroid/net/Uri;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->h:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_1

    .line 165
    iget-boolean v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->i:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/VideoPreference;->a(Z)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 115
    iget-boolean v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->i:Z

    const-string v1, "key_video_paused"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 130
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string/jumbo v1, "volume_hush_gesture"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 134
    :goto_1
    iget-object v4, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->b:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/settings/widget/RadioButtonPreference;->isChecked()Z

    move-result v4

    if-eq v4, v2, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->b:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 137
    :cond_2
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->c:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/settings/widget/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eq v2, v3, :cond_3

    .line 138
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->c:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :cond_3
    if-nez p1, :cond_4

    .line 142
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->b:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->c:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    return-void

    .line 145
    :cond_4
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->b:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->c:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    return-void
.end method
