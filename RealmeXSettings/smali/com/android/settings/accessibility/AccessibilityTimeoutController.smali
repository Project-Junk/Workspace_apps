.class public Lcom/android/settings/accessibility/AccessibilityTimeoutController;
.super Lcom/android/settingslib/core/a;
.source "AccessibilityTimeoutController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/widget/RadioButtonPreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityTimeoutController$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/accessibility/AccessibilityTimeoutController$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Landroid/content/res/Resources;

.field private f:Lcom/android/settings/widget/RadioButtonPreference;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->b:Ljava/util/Map;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->d:Landroid/content/ContentResolver;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->e:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 75
    :cond_0
    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 11

    .line 79
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 2390
    :cond_0
    invoke-static {p0}, Lcom/google/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move-object p0, v1

    goto/16 :goto_3

    .line 2397
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, p1

    .line 2399
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v0, 0x1

    .line 2402
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/a/c/b$a;->a(C)I

    move-result v3

    if-ltz v3, :cond_1

    const/16 v4, 0xa

    if-lt v3, v4, :cond_5

    goto :goto_0

    :cond_5
    neg-int v3, v3

    int-to-long v5, v3

    .line 2410
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-wide/high16 v7, -0x8000000000000000L

    if-ge v2, v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    .line 2411
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/a/c/b$a;->a(C)I

    move-result v2

    if-ltz v2, :cond_1

    if-ge v2, v4, :cond_1

    const-wide v9, -0xcccccccccccccccL

    cmp-long v9, v5, v9

    if-gez v9, :cond_6

    goto :goto_0

    :cond_6
    const-wide/16 v9, 0xa

    mul-long/2addr v5, v9

    int-to-long v9, v2

    add-long/2addr v7, v9

    cmp-long v2, v5, v7

    if-gez v2, :cond_7

    goto :goto_0

    :cond_7
    sub-long/2addr v5, v9

    move v2, v3

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    .line 2423
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_3

    :cond_9
    cmp-long p0, v5, v7

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    neg-long v2, v5

    .line 2427
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_c

    .line 1736
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    goto :goto_4

    .line 1739
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_c
    :goto_4
    if-nez v1, :cond_d

    return p1

    .line 84
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private a()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->e:Landroid/content/res/Resources;

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->e:Landroid/content/res/Resources;

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 100
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->b:Ljava/util/Map;

    aget-object v5, v0, v3

    aget v6, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->d:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 3

    .line 141
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRadioButtonClicked, mPreferenceKey:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityTimeoutController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 3113
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "handlePreferenceChange, value: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContext:Landroid/content/Context;

    const-string v1, "accessibility_timeout_toggle"

    .line 3240
    invoke-static {v0, v1, v1, p1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accessibility_non_interactive_ui_timeout_ms"

    .line 3116
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accessibility_interactive_ui_timeout_ms"

    .line 3117
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a:Lcom/android/settings/accessibility/AccessibilityTimeoutController$a;

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->f:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-interface {p1, v0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController$a;->a(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->f:Lcom/android/settings/widget/RadioButtonPreference;

    .line 136
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->f:Lcom/android/settings/widget/RadioButtonPreference;

    .line 3069
    iput-object p0, p1, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 4151
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->d:Landroid/content/ContentResolver;

    const-string v0, "accessibility_interactive_ui_timeout_ms"

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 166
    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->g:I

    .line 169
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->f:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->f:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4157
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->g:I

    if-ne v0, p1, :cond_0

    .line 4158
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->f:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
