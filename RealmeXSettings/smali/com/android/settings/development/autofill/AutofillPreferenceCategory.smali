.class public final Lcom/android/settings/development/autofill/AutofillPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "AutofillPreferenceCategory.java"


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/database/ContentObserver;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->c:Landroid/os/Handler;

    .line 42
    new-instance p2, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->c:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;-><init>(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->b:Landroid/database/ContentObserver;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->a:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final onAttached()V
    .locals 4

    .line 57
    invoke-super {p0}, Landroidx/preference/PreferenceCategory;->onAttached()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->a:Landroid/content/ContentResolver;

    const-string v1, "autofill_service"

    .line 60
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->b:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 59
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onDetached()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    invoke-super {p0}, Landroidx/preference/PreferenceCategory;->onDetached()V

    return-void
.end method

.method public final shouldDisableDependents()Z
    .locals 4

    .line 1074
    invoke-virtual {p0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1076
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isAutofillEnabled(): "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillPreferenceCategory"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr v0, v1

    .line 83
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shouldDisableDependents(): "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
