.class public Lcom/android/systemui/settings/ToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "ToggleSeekBar.java"


# instance fields
.field private mAccessibilityLabel:Ljava/lang/String;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 77
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 51
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p0

    .line 53
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p1, p0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return v1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    .line 62
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    .line 67
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAccessibilityLabel(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method
