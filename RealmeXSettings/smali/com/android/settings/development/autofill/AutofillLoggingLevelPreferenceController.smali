.class public final Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "AutofillLoggingLevelPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:Lcom/android/settings/development/autofill/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030015

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->a:[Ljava/lang/String;

    const v0, 0x7f030014

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->b:[Ljava/lang/String;

    .line 53
    new-instance p1, Lcom/android/settings/development/autofill/b;

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/development/autofill/-$$Lambda$AutofillLoggingLevelPreferenceController$0xqK759loDu1xrBcyfKVz7ITjcw;

    invoke-direct {v1, p0}, Lcom/android/settings/development/autofill/-$$Lambda$AutofillLoggingLevelPreferenceController$0xqK759loDu1xrBcyfKVz7ITjcw;-><init>(Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;)V

    invoke-direct {p1, v0, v1}, Lcom/android/settings/development/autofill/b;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->c:Lcom/android/settings/development/autofill/b;

    .line 54
    iget-object p1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->c:Lcom/android/settings/development/autofill/b;

    invoke-virtual {p1}, Lcom/android/settings/development/autofill/b;->a()V

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .line 114
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_logging_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private c()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->d:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    const-string v0, "AutofillLoggingLevelPreferenceController"

    const-string v1, "ignoring Settings update because UI is gone"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    const-string v2, "autofill_logging_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 108
    iget-object v2, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->b:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic e()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->c()V

    return-void
.end method

.method public static synthetic lambda$0xqK759loDu1xrBcyfKVz7ITjcw(Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->e()V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "autofill_logging_level"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->c:Lcom/android/settings/development/autofill/b;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/b;->b()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p2}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->a(Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->c()V

    const/4 p1, 0x1

    return p1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->c()V

    return-void
.end method
