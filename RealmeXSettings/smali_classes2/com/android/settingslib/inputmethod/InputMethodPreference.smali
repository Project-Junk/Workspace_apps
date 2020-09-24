.class public Lcom/android/settingslib/inputmethod/InputMethodPreference;
.super Lcom/android/settingslib/RestrictedSwitchPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/inputmethod/InputMethodPreference$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "InputMethodPreference"


# instance fields
.field private final e:Landroid/view/inputmethod/InputMethodInfo;

.field private final f:Z

.field private final g:Lcom/android/settingslib/inputmethod/InputMethodPreference$a;

.field private final h:Lcom/android/settingslib/inputmethod/c;

.field private final i:Z

.field private j:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->j:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setPersistent(Z)V

    .line 109
    iput-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    .line 110
    iput-boolean p4, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->i:Z

    .line 111
    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->g:Lcom/android/settingslib/inputmethod/InputMethodPreference$a;

    const-string p4, ""

    .line 113
    invoke-virtual {p0, p4}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0, p4}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p3}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p3

    .line 118
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, p4}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    .line 126
    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/c;->a(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->h:Lcom/android/settingslib/inputmethod/c;

    .line 127
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    invoke-static {p2}, Lcom/android/settingslib/inputmethod/a;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->f:Z

    .line 129
    invoke-virtual {p0, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    invoke-virtual {p0, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;Z)V

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 268
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Z)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 289
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Z)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 264
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Z)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .line 228
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->c()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    .line 230
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/inputmethod/a;->a(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 256
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->f()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Z)V

    return-void
.end method

.method private e()Z
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

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

.method private f()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->j:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 284
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 285
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 286
    sget v2, Lcom/android/settingslib/e$h;->direct_boot_unaware_dialog_message:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 287
    new-instance v2, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$LuWnKR8TCmwXbMQ2iJWNQ1dAkhw;

    invoke-direct {v2, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$LuWnKR8TCmwXbMQ2iJWNQ1dAkhw;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 288
    new-instance v2, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$T9wdi3zjjzezA_S8xuau6JlceC0;

    invoke-direct {v2, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$T9wdi3zjjzezA_S8xuau6JlceC0;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->j:Landroid/app/AlertDialog;

    .line 291
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic lambda$LuWnKR8TCmwXbMQ2iJWNQ1dAkhw(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$MRgwNP0hSLvf0pd6-AGujhaEW3g(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$T9wdi3zjjzezA_S8xuau6JlceC0(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$WNIuVMdvvrJJ8z8WqSurJvYN6Io(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$_Avdfdoa48_-CyQ7c89vh7fUmyc(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 298
    :cond_0
    iget-boolean v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->f:Z

    iget-boolean v2, p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->f:Z

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 303
    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 304
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v2, :cond_3

    if-nez v4, :cond_3

    .line 307
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

.method public final a()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->h:Lcom/android/settingslib/inputmethod/c;

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/c;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Lcom/android/settingslib/g$a;)V

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->i:Z

    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    .line 212
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 211
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/h;->e(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Lcom/android/settingslib/g$a;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->h:Lcom/android/settingslib/inputmethod/c;

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/c;->b(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 2177
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 3161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    if-nez v0, :cond_2

    .line 219
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 147
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    invoke-direct {p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Z)V

    return p2

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 161
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e()Z

    move-result p1

    if-nez p1, :cond_6

    .line 164
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->f()V

    goto :goto_1

    .line 162
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Z)V

    goto :goto_1

    .line 1241
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->j:Landroid/app/AlertDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1242
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->j:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1244
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1245
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1246
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040014

    .line 1247
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1248
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1249
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1248
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1250
    sget v3, Lcom/android/settingslib/e$h;->ime_security_warning:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p2

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 1251
    new-instance v0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$WNIuVMdvvrJJ8z8WqSurJvYN6Io;

    invoke-direct {v0, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$WNIuVMdvvrJJ8z8WqSurJvYN6Io;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 1262
    new-instance v0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$_Avdfdoa48_-CyQ7c89vh7fUmyc;

    invoke-direct {v0, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$_Avdfdoa48_-CyQ7c89vh7fUmyc;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1266
    new-instance p1, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$MRgwNP0hSLvf0pd6-AGujhaEW3g;

    invoke-direct {p1, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$MRgwNP0hSLvf0pd6-AGujhaEW3g;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1270
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->j:Landroid/app/AlertDialog;

    .line 1271
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->j:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_6
    :goto_1
    return p2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 178
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->b()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 191
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodPreference;->d:Ljava/lang/String;

    const-string v3, "IME\'s Settings Activity Not Found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    sget v1, Lcom/android/settingslib/e$h;->failed_to_open_app_settings_toast:I

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->e:Landroid/view/inputmethod/InputMethodInfo;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 192
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return v0
.end method
