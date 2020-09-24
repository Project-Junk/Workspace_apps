.class public Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "QuestionSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/QuestionSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuestionSelectFragment"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "QuestionSelectFragment"

    .line 91
    iput-object v0, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)I
    .locals 1

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->d:I

    return v0
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 195
    iget-object v3, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->d:I

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->a()V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->d:I

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1500df

    .line 105
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->b:[Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "question_result_type"

    .line 108
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->d:I

    const-string v1, "question_result_detail"

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->e:Ljava/lang/String;

    .line 1129
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "question_list"

    .line 1130
    invoke-virtual {p0, v1}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 1131
    iget-object v2, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->b:[Ljava/lang/String;

    array-length v3, v2

    new-array v3, v3, [Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object v3, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    .line 1132
    array-length v2, v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1133
    iget-object v4, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    new-instance v5, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-direct {v5, p1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v3

    .line 1134
    iget-object v4, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    aget-object v4, v4, v3

    invoke-virtual {v4, v3}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setOrder(I)V

    .line 1135
    iget-object v4, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    aget-object v4, v4, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setKey(Ljava/lang/String;)V

    .line 1136
    iget-object v4, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->b:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v4, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->d:I

    if-ne v3, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 1138
    iget-object v4, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c:[Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "question_customize"

    .line 1143
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorEditTextPreference;

    .line 1145
    iget v0, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, ""

    .line 1148
    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorEditTextPreference;->setText(Ljava/lang/String;)V

    .line 1150
    :goto_2
    new-instance v0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$1;-><init>(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)V

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorEditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    .line 1157
    new-instance v0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;-><init>(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)V

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a070a

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    if-eqz p2, :cond_0

    const p3, 0x7f12110d

    .line 119
    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p2, p3}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-object p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 201
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "question_customize"

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 204
    iput v0, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->d:I

    .line 205
    iget-object v1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->e:Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->a()V

    .line 207
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "question_result_type"

    .line 208
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object v2, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->b:[Ljava/lang/String;

    aget-object v0, v2, v0

    const-string v2, "question_result_detail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 213
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 189
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 190
    invoke-direct {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->a()V

    return-void
.end method
