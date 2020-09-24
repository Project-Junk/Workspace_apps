.class public final Lcom/android/settings/gestures/c;
.super Lcom/android/settingslib/core/a;
.source "PreventRingingSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/widget/SwitchBar$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/c$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/widget/SwitchBar;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Lcom/android/settings/gestures/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcom/android/settings/gestures/c;->b:Landroid/content/Context;

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;)Z
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/android/settings/gestures/c;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "volume_hush_gesture"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/android/settings/gestures/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    xor-int/2addr p1, v1

    invoke-static {v2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method

.method public static synthetic lambda$0eN78b2AJDC5oY9c3Duo0aQveP8(Lcom/android/settings/gestures/c;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/c;->a(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/gestures/c;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/gestures/c;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Lcom/android/settings/gestures/c$a;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/gestures/c$a;-><init>(Lcom/android/settings/gestures/c;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/gestures/c;->c:Lcom/android/settings/gestures/c$a;

    .line 65
    new-instance v0, Lcom/android/settings/gestures/-$$Lambda$c$0eN78b2AJDC5oY9c3Duo0aQveP8;

    invoke-direct {v0, p0}, Lcom/android/settings/gestures/-$$Lambda$c$0eN78b2AJDC5oY9c3Duo0aQveP8;-><init>(Lcom/android/settings/gestures/c;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f0a06b7

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/gestures/c;->a:Lcom/android/settings/widget/SwitchBar;

    .line 77
    iget-object p1, p0, Lcom/android/settings/gestures/c;->a:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/gestures/c;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->a()V

    :cond_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_prevent_ringing_switch"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settings/gestures/c;->b:Landroid/content/Context;

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

.method public final onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/android/settings/gestures/c;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string/jumbo v1, "volume_hush_gesture"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/android/settings/gestures/c;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string/jumbo v1, "volume_hush_gesture"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1086
    :goto_0
    iget-object p1, p0, Lcom/android/settings/gestures/c;->a:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_1

    .line 1087
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    return-void
.end method
