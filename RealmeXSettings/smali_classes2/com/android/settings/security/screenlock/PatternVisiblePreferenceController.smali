.class public Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;
.super Lcom/android/settingslib/core/a;
.source "PatternVisiblePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:I

.field private final b:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 40
    iput p2, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->a:I

    .line 41
    iput-object p3, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "visiblepattern"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->a:I

    .line 1062
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget v0, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->a:I

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 56
    check-cast p1, Landroidx/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->a:I

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
