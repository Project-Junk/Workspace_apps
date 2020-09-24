.class public Lcom/android/settings/display/ToggleFontSizePreferenceFragment;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ToggleFontSizePreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method

.method public static a(F[Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    .line 126
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    .line 127
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 128
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 134
    :cond_1
    array-length p0, p1

    sub-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0d0188

    return v0
.end method

.method protected final a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 80
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->d:[F

    aget p1, p1, p2

    iput p1, v0, Landroid/content/res/Configuration;->fontScale:F

    return-object v0
.end method

.method protected final b()[I
    .locals 3

    const/4 v0, 0x1

    .line 55
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0d0189

    aput v2, v0, v1

    return-object v0
.end method

.method protected final c()V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->d:[F

    array-length v1, v1

    iget v3, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->c:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    goto :goto_1

    .line 98
    :cond_2
    iget v1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->c:I

    .line 100
    :goto_1
    iget-object v2, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->d:[F

    aget v1, v2, v1

    const-string v2, "font_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ab2

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x154

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x7f030051

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->a:[Ljava/lang/String;

    const v1, 0x7f030091

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 68
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 69
    invoke-static {v0, p1}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->a(F[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->b:I

    .line 70
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->d:[F

    const/4 v0, 0x0

    .line 71
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->d:[F

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f121702

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method
