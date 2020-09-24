.class public Lcom/android/settings/widget/ValidatedEditTextPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "ValidatedEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ValidatedEditTextPreference$a;,
        Lcom/android/settings/widget/ValidatedEditTextPreference$b;
    }
.end annotation


# instance fields
.field public a:Lcom/android/settings/widget/ValidatedEditTextPreference$b;

.field public b:Z

.field public c:Z

.field private final d:Lcom/android/settings/widget/ValidatedEditTextPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference$a;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;B)V

    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->d:Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/ValidatedEditTextPreference$a;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;B)V

    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->d:Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/ValidatedEditTextPreference$a;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;B)V

    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->d:Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/ValidatedEditTextPreference$a;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;B)V

    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->d:Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$b;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->a:Lcom/android/settings/widget/ValidatedEditTextPreference$b;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->a(Landroid/view/View;)V

    const v0, 0x1020003

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->a:Lcom/android/settings/widget/ValidatedEditTextPreference$b;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->d:Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    iget-boolean v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x91

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->d:Lcom/android/settings/widget/ValidatedEditTextPreference$a;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->c:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x81

    .line 93
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_1
    const v0, 0x80001

    .line 96
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method
