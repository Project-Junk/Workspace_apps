.class public Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;
.super Lcom/coloros/settingslib/inputmethod/InputMethodPreference;
.source "ColorInputMethodPreference.java"


# static fields
.field private static final f:Ljava/lang/String; = "ColorInputMethodPreference"


# instance fields
.field final a:Z

.field private final g:Landroid/view/inputmethod/InputMethodInfo;

.field private final h:Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;

.field private final i:Lcom/android/settingslib/inputmethod/c;

.field private final j:Z

.field private k:Z

.field private l:Lcolor/support/v7/app/AlertDialog;

.field private m:Ljava/lang/CharSequence;

.field private n:Z

.field private o:Landroid/content/pm/PackageManager;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/coloros/settingslib/inputmethod/InputMethodPreference$a;)V
    .locals 3

    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/coloros/settingslib/inputmethod/InputMethodPreference$a;)V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->k:Z

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setPersistent(Z)V

    .line 98
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    .line 99
    iput-boolean p4, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->j:Z

    .line 100
    iput-object p5, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->h:Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    iput-object p4, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->o:Landroid/content/pm/PackageManager;

    if-nez p3, :cond_0

    .line 104
    iput-boolean v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->k:Z

    const p3, 0x7f0d021b

    .line 105
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setWidgetLayoutResource(I)V

    .line 106
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->p:Z

    :cond_0
    const-string p3, ""

    .line 109
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 112
    iget-object p3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->o:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p3

    .line 114
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 115
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_1
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.MAIN"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, p4}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setIntent(Landroid/content/Intent;)V

    .line 122
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settingslib/inputmethod/c;->a(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/c;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->i:Lcom/android/settingslib/inputmethod/c;

    .line 123
    invoke-static {p2}, Lcom/coloros/settings/utils/u;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 124
    invoke-static {p2}, Lcom/android/settingslib/inputmethod/a;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->a:Z

    .line 126
    invoke-static {p1}, Lcom/coloros/settings/utils/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->o:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/coloros/settings/utils/b;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->n:Z

    .line 130
    sget-object p2, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ColorInputMethodPreference mIsAppFrozen:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->n:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", info:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 132
    sget-object p2, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error occur, e = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3
    :goto_2
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 136
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .line 282
    invoke-super {p0, p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 284
    iget-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->n:Z

    if-eqz p1, :cond_0

    .line 285
    sget-object p1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCheckedInternal oppoUnFreezePackage:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->o:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/b/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->h:Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;

    invoke-interface {p1, p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;->onSaveInputMethodPreference(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)V

    .line 292
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public final b()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->i:Lcom/android/settingslib/inputmethod/c;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/c;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->i:Lcom/android/settingslib/inputmethod/c;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/inputmethod/c;->b(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4176
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->a(Lcom/android/settingslib/g$a;)V

    xor-int/lit8 v0, v1, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setEnabled(Z)V

    goto :goto_0

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->j:Z

    if-nez v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    .line 252
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 251
    invoke-static {v0, v3, v4}, Lcom/android/settingslib/h;->e(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->a(Lcom/android/settingslib/g$a;)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setEnabled(Z)V

    .line 258
    :goto_0
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setChecked(Z)V

    .line 261
    invoke-static {}, Lcom/coloros/settings/utils/al;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 4191
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 4195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-nez v0, :cond_6

    .line 5271
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4276
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 4278
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    .line 4277
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/inputmethod/a;->a(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v0

    .line 6144
    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->p:Z

    if-eqz v1, :cond_3

    .line 6145
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->m:Ljava/lang/CharSequence;

    .line 6146
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 6147
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->m:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6148
    :cond_5
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->m:Ljava/lang/CharSequence;

    .line 6149
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->notifyChanged()V

    :cond_6
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 156
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->p:Z

    if-eqz v0, :cond_0

    const v0, 0x1020010

    .line 157
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x7f0a0651

    .line 160
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->m:Ljava/lang/CharSequence;

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    .line 167
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 1176
    iget-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->k:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->c(Z)V

    return p2

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {p1}, Lcom/coloros/settings/utils/u;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    const/high16 v0, 0x1040000

    const v1, 0x7f120fd6

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 195
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz p1, :cond_2

    .line 196
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->c(Z)V

    goto/16 :goto_0

    .line 1334
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1335
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 1337
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1338
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1339
    invoke-virtual {v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const v4, 0x7f1207e0

    .line 1340
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, p2

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f1207df

    .line 1341
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1342
    new-instance p1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference$3;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference$3;-><init>(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;)V

    invoke-virtual {v3, v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1348
    new-instance p1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference$4;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference$4;-><init>(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;)V

    invoke-virtual {v3, v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1354
    invoke-virtual {v3}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    .line 1355
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 1356
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    invoke-static {p1}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    goto :goto_0

    .line 2296
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2297
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 2299
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2300
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2301
    invoke-virtual {v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 2302
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2303
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2302
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f120fd7

    .line 2304
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, p2

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v5, 0x7f120b00

    .line 2305
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, p2

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 2306
    new-instance p1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference$1;-><init>(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;)V

    invoke-virtual {v3, v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 2321
    new-instance p1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference$2;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference$2;-><init>(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;)V

    invoke-virtual {v3, v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 2328
    invoke-virtual {v3}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    .line 2329
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 2330
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->l:Lcolor/support/v7/app/AlertDialog;

    invoke-static {p1}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    :goto_0
    return p2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 3176
    iget-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->k:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f010067

    const v3, 0x7f010068

    .line 224
    invoke-static {p1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 230
    sget-object v2, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->f:Ljava/lang/String;

    const-string v3, "IME\'s Settings Activity Not Found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v1, 0x7f12098e

    .line 231
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->g:Landroid/view/inputmethod/InputMethodInfo;

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 231
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return v0
.end method
