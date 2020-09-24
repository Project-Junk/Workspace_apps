.class abstract Lcom/android/settings/development/autofill/a;
.super Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;
.source "AbstractGlobalSettingsPreference.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/android/settings/development/autofill/b;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object p3, p0, Lcom/android/settings/development/autofill/a;->a:Ljava/lang/String;

    .line 49
    iput p4, p0, Lcom/android/settings/development/autofill/a;->b:I

    .line 50
    new-instance p2, Lcom/android/settings/development/autofill/b;

    new-instance p3, Lcom/android/settings/development/autofill/-$$Lambda$a$JxBRK40nEk5yD-B-3hogsafmWX0;

    invoke-direct {p3, p0}, Lcom/android/settings/development/autofill/-$$Lambda$a$JxBRK40nEk5yD-B-3hogsafmWX0;-><init>(Lcom/android/settings/development/autofill/a;)V

    invoke-direct {p2, p1, p3}, Lcom/android/settings/development/autofill/b;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/settings/development/autofill/a;->c:Lcom/android/settings/development/autofill/b;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/development/autofill/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/autofill/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/development/autofill/a;->b:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/settings/development/autofill/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/autofill/a;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic c()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/development/autofill/a;->b()V

    return-void
.end method

.method public static synthetic lambda$JxBRK40nEk5yD-B-3hogsafmWX0(Lcom/android/settings/development/autofill/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/autofill/a;->c()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 109
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->a(Landroid/content/DialogInterface;I)V

    .line 110
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick: which: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractGlobalSettingsPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 113
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->a(Landroid/view/View;)V

    const v0, 0x1020003

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/development/autofill/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/development/autofill/a;->getText()Ljava/lang/String;

    move-result-object p1

    .line 96
    iget v0, p0, Lcom/android/settings/development/autofill/a;->b:I

    .line 98
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error converting \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to integer. Using "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/settings/development/autofill/a;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AbstractGlobalSettingsPreference"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/autofill/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/development/autofill/a;->a:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->onAttached()V

    .line 57
    iget-object v0, p0, Lcom/android/settings/development/autofill/a;->c:Lcom/android/settings/development/autofill/b;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/b;->a()V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/development/autofill/a;->b()V

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/autofill/a;->c:Lcom/android/settings/development/autofill/b;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/b;->b()V

    .line 65
    invoke-super {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->onDetached()V

    return-void
.end method
