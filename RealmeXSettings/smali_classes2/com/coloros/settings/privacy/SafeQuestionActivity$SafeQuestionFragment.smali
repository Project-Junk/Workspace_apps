.class public Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafeQuestionActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeQuestionFragment"
.end annotation


# instance fields
.field private a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private b:Lcom/color/support/preference/ColorInputPreference;

.field private c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private e:I

.field private f:I

.field private g:Lcom/coloros/settings/privacy/a/g;

.field private h:[Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Landroid/view/MenuItem;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->l:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 294
    iget v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->h:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_0
    iget v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->h:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1210f5

    goto :goto_1

    :cond_2
    const v1, 0x7f1210f4

    .line 302
    :goto_1
    invoke-virtual {p0, v1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_3

    .line 304
    iget-boolean v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->k:Z

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method private synthetic a(Z)V
    .locals 3

    .line 399
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceChange onVerify: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SafeQuestionFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->k:Z

    .line 402
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 403
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;Z)V

    .line 404
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "pw_privacy_account"

    invoke-static {p1, v2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->a()V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Z
    .locals 1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Landroid/content/Context;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Landroid/content/Context;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic lambda$WHeBUzZsv7eUOkx48PsBJjHAQAY(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->a(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 359
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    const-string p2, "question_result_type"

    .line 362
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->f:I

    const-string p1, "question_result_detail"

    .line 363
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->i:Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->a()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500de

    .line 155
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->addPreferencesFromResource(I)V

    .line 156
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "question_choose_type"

    .line 157
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->e:I

    .line 158
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->g:Lcom/coloros/settings/privacy/a/g;

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v2, -0x1

    const-string v3, "key_ui_mode"

    .line 162
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->finish()V

    :cond_0
    const/4 p1, 0x1

    .line 1229
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->setHasOptionsMenu(Z)V

    .line 1230
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0300c5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->h:[Ljava/lang/String;

    const-string v0, "question_set"

    .line 1231
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "answer_input"

    .line 1232
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorInputPreference;

    iput-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->b:Lcom/color/support/preference/ColorInputPreference;

    const-string v0, "bind_email"

    .line 1233
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "bind_account"

    .line 1234
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string v0, "other_parent"

    .line 1236
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 1237
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/utils/al;->ap(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v2, :cond_1

    .line 1238
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v2, 0x0

    .line 1239
    iput-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1241
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v2, :cond_2

    .line 1242
    invoke-virtual {v2, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1244
    :cond_2
    iget-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->b:Lcom/color/support/preference/ColorInputPreference;

    .line 2226
    iget-object v2, v2, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v3, 0x6

    .line 1245
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1246
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1247
    new-instance v1, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$1;-><init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1265
    iget v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_4

    .line 1267
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    const-string p1, "privacy_question_bottom_divider"

    .line 1268
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 1269
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_3
    if-ne v1, p1, :cond_4

    .line 1272
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "question_parent"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    const v0, 0x7f121249

    .line 1274
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1277
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->a()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 204
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0e000c

    .line 205
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0491

    .line 206
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->l:Landroid/view/MenuItem;

    .line 207
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->l:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 208
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 183
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const-string v0, "custom_title"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0a070a

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    .line 185
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p3, 0x7f121007

    .line 186
    invoke-virtual {v0, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    :goto_0
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->hideDivider()V

    const/4 p3, 0x1

    .line 191
    invoke-virtual {v0, p3}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 192
    instance-of p3, p2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p3, :cond_1

    .line 193
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p3, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 195
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    .line 197
    invoke-virtual {p2, p3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 219
    :pswitch_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->b:Lcom/color/support/preference/ColorInputPreference;

    .line 3226
    iget-object p1, p1, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    .line 219
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->j:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->k:Z

    .line 3334
    iget v3, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->e:I

    const/4 v4, -0x1

    if-ne v3, v1, :cond_2

    .line 3370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3371
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3372
    iget v5, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->f:I

    const-string v6, "question_result_type"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3373
    iget-object v5, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->i:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3374
    iget-object v5, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->i:Ljava/lang/String;

    const-string v6, "question_result_detail"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v5, "question_answer"

    .line 3376
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "question_account"

    .line 3377
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "question_email"

    .line 3379
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3381
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 3382
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v3, v0, :cond_4

    .line 3337
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3341
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3342
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "confirm_challenge"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 3343
    iget v3, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->f:I

    const-string v5, "privacy_quesion_type_choose"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3344
    iget v3, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->f:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3345
    iget-object v3, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->i:Ljava/lang/String;

    const-string v5, "privacy_quesion_detail_choose"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3347
    :cond_3
    iget-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->g:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v2}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v3

    iget v3, v3, Lcom/coloros/settings/privacy/a/g$d;->a:I

    invoke-virtual {v2, v0, v3, p1}, Lcom/coloros/settings/privacy/a/g;->b([BILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3350
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 3351
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_4
    :goto_0
    return v1

    .line 216
    :pswitch_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0490
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 393
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 394
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bind_account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 396
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->mContext:Landroid/content/Context;

    const-string p2, "6Ybor28QRRMyftsLi4bN2w"

    invoke-static {p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SafeQuestionFragment"

    const-string p2, "onPreferenceChange startConfirmAccount."

    .line 397
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/coloros/settings/privacy/-$$Lambda$SafeQuestionActivity$SafeQuestionFragment$WHeBUzZsv7eUOkx48PsBJjHAQAY;

    invoke-direct {p2, p0}, Lcom/coloros/settings/privacy/-$$Lambda$SafeQuestionActivity$SafeQuestionFragment$WHeBUzZsv7eUOkx48PsBJjHAQAY;-><init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)V

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;Lcom/coloros/settings/privacy/SafeQuestionActivity$a;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$4;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$4;-><init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)V

    invoke-static {p1, v1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    :goto_0
    return v0

    .line 425
    :cond_1
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->k:Z

    .line 426
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;Z)V

    .line 427
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->mContext:Landroid/content/Context;

    const-string p2, "pw_privacy_account"

    invoke-static {p1, p2, v0, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 310
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "question_set"

    .line 311
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    iget v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->f:I

    const-string v3, "question_result_type"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->i:Ljava/lang/String;

    const-string v3, "question_result_detail"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/coloros/settings/privacy/QuestionSelectActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0, v2}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string v1, "bind_email"

    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->j:Ljava/lang/String;

    new-instance v3, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$3;

    invoke-direct {v3, p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$3;-><init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)V

    invoke-static {v0, v2, v1, v3}, Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V

    .line 330
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 282
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 284
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->b:Lcom/color/support/preference/ColorInputPreference;

    .line 4226
    iget-object v0, v0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    .line 285
    new-instance v1, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$2;-><init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;Landroid/widget/EditText;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 174
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
