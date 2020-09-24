.class public Lcom/android/settings/display/DensityPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "DensityPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()I
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 54
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->a(Landroid/view/View;)V

    const v0, 0x1020003

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/display/DensityPreference;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x140

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 78
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int/lit16 p1, p1, 0xa0

    .line 79
    div-int/2addr p1, v0

    const/16 v0, 0x78

    .line 80
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 81
    invoke-static {p1}, Lcom/android/settingslib/f/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "DensityPreference"

    const-string v1, "Couldn\'t save density"

    .line 84
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 4

    .line 44
    invoke-super {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onAttached()V

    .line 45
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 46
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/display/DensityPreference;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f120757

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/DensityPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
