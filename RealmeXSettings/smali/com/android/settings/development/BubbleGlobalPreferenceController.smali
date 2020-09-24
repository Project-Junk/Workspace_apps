.class public Lcom/android/settings/development/BubbleGlobalPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "BubbleGlobalPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/settings/development/BubbleGlobalPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_bubbles"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_bubbles"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/android/settings/development/BubbleGlobalPreferenceController;->a(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/BubbleGlobalPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BubbleGlobalPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 50
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/development/BubbleGlobalPreferenceController;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 56
    iget-object p1, p0, Lcom/android/settings/development/BubbleGlobalPreferenceController;->d:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 1067
    iget-object v0, p0, Lcom/android/settings/development/BubbleGlobalPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "notification_bubbles"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 56
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
