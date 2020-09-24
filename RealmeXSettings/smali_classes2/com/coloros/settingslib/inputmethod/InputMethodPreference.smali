.class public Lcom/coloros/settingslib/inputmethod/InputMethodPreference;
.super Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "InputMethodPreference"


# instance fields
.field private final f:Landroid/view/inputmethod/InputMethodInfo;

.field private final g:Z

.field private final h:Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;

.field private final i:Lcom/android/settingslib/inputmethod/c;

.field private final j:Z

.field private k:Lcolor/support/v7/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/coloros/settingslib/inputmethod/InputMethodPreference$a;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->k:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setPersistent(Z)V

    .line 113
    iput-object p2, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    .line 114
    iput-boolean p4, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->j:Z

    .line 115
    iput-object p5, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->h:Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;

    const-string p4, ""

    .line 117
    invoke-virtual {p0, p4}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0, p4}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p3}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p3

    .line 122
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_0
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.MAIN"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p4}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    .line 130
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/inputmethod/c;->a(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->i:Lcom/android/settingslib/inputmethod/c;

    .line 131
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    invoke-static {p2}, Lcom/android/settingslib/inputmethod/a;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->g:Z

    .line 133
    invoke-virtual {p0, p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    invoke-virtual {p0, p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/coloros/settingslib/inputmethod/InputMethodPreference$a;)V
    .locals 7

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/coloros/settingslib/inputmethod/InputMethodPreference$a;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 272
    invoke-direct {p0, p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c(Z)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 293
    invoke-direct {p0, p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c(Z)V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 291
    invoke-direct {p0, p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c(Z)V

    return-void
.end method

.method private synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 268
    invoke-direct {p0, p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 0

    .line 239
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 240
    iget-object p1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->h:Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;

    invoke-interface {p1, p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;->onSaveInputMethodPreference(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)V

    .line 241
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method private c()Z
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->e()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 261
    invoke-direct {p0, p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c(Z)V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->k:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->k:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 288
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 289
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f1207df

    .line 290
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 291
    new-instance v2, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$IrkNw8GeHBklZg-0KuFZ1htjK4Y;

    invoke-direct {v2, p0}, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$IrkNw8GeHBklZg-0KuFZ1htjK4Y;-><init>(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 292
    new-instance v2, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$r8Amzxbbm4qh9HhRokvKM4gRlYE;

    invoke-direct {v2, p0}, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$r8Amzxbbm4qh9HhRokvKM4gRlYE;-><init>(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->k:Lcolor/support/v7/app/AlertDialog;

    .line 295
    iget-object v0, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->k:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic lambda$G1-0kFzxCllMQbc5iFTaWbe5IxE(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$IYNtFcKsBqr7-xY7bwW2BXoYWV0(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$IrkNw8GeHBklZg-0KuFZ1htjK4Y(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$WaLNybwFx4tuZ8Xj6P0-2Cb-44E(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$r8Amzxbbm4qh9HhRokvKM4gRlYE(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 302
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->g:Z

    iget-boolean v2, p1, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->g:Z

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 307
    invoke-virtual {p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 308
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v2, :cond_3

    if-nez v4, :cond_3

    .line 311
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    if-eqz v2, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_0
    if-eqz v4, :cond_5

    move v0, v3

    :cond_5
    sub-int/2addr p1, v0

    return p1
.end method

.method public a()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public b()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->i:Lcom/android/settingslib/inputmethod/c;

    iget-object v1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/c;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->a(Lcom/android/settingslib/g$a;)V

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setEnabled(Z)V

    goto :goto_0

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->j:Z

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    .line 216
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 215
    invoke-static {v0, v2, v3}, Lcom/android/settingslib/h;->e(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->a(Lcom/android/settingslib/g$a;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0, v1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->i:Lcom/android/settingslib/inputmethod/c;

    iget-object v2, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/inputmethod/c;->b(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 2191
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 2195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-nez v0, :cond_2

    .line 3228
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2233
    iget-object v2, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 2235
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    .line 2234
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/inputmethod/a;->a(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 151
    invoke-direct {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    invoke-direct {p0, p2}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c(Z)V

    return p2

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 165
    iget-object p1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->d()Z

    move-result p1

    if-nez p1, :cond_6

    .line 168
    invoke-direct {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->e()V

    goto :goto_1

    .line 166
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c(Z)V

    goto :goto_1

    .line 1245
    :cond_4
    iget-object p1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->k:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1246
    iget-object p1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->k:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 1248
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1249
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1250
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1251
    iget-object v2, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1252
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1251
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f120fd7

    .line 1253
    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, p2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f120b00

    .line 1254
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p2

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 1255
    new-instance v0, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$G1-0kFzxCllMQbc5iFTaWbe5IxE;

    invoke-direct {v0, p0}, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$G1-0kFzxCllMQbc5iFTaWbe5IxE;-><init>(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 1266
    new-instance v0, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$WaLNybwFx4tuZ8Xj6P0-2Cb-44E;

    invoke-direct {v0, p0}, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$WaLNybwFx4tuZ8Xj6P0-2Cb-44E;-><init>(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1270
    new-instance p1, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$IYNtFcKsBqr7-xY7bwW2BXoYWV0;

    invoke-direct {p1, p0}, Lcom/coloros/settingslib/inputmethod/-$$Lambda$InputMethodPreference$IYNtFcKsBqr7-xY7bwW2BXoYWV0;-><init>(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1274
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->k:Lcolor/support/v7/app/AlertDialog;

    .line 1275
    iget-object p1, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->k:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_6
    :goto_1
    return p2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 182
    invoke-direct {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->c()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 195
    sget-object v2, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->a:Ljava/lang/String;

    const-string v3, "IME\'s Settings Activity Not Found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v1, 0x7f12098e

    .line 196
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->f:Landroid/view/inputmethod/InputMethodInfo;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 196
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return v0
.end method
