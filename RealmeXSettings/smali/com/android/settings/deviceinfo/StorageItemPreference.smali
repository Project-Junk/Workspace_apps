.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroidx/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field public a:I

.field private b:Landroid/widget/ProgressBar;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->c:I

    const p1, 0x7f0d02eb

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    const p1, 0x7f120d60

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->b:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "string"

    const-string v7, "gigabyteShort"

    .line 1080
    invoke-virtual {v4, v7, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-nez v3, :cond_0

    const-string v3, ""

    goto/16 :goto_3

    .line 2059
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    cmp-long v11, v1, v7

    const/4 v12, 0x1

    if-gez v11, :cond_1

    move v11, v12

    goto :goto_0

    :cond_1
    move v11, v9

    :goto_0
    if-eqz v11, :cond_2

    neg-long v13, v1

    long-to-float v13, v13

    goto :goto_1

    :cond_2
    long-to-float v13, v1

    :goto_1
    const v14, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, v13, v14

    if-gez v14, :cond_3

    const/16 v14, 0x64

    const-string v15, "%.2f"

    goto :goto_2

    :cond_3
    const/high16 v14, 0x41200000    # 10.0f

    cmpg-float v14, v13, v14

    if-gez v14, :cond_4

    const/16 v14, 0xa

    const-string v15, "%.1f"

    goto :goto_2

    :cond_4
    const-string v15, "%.0f"

    move v14, v12

    :goto_2
    if-eqz v11, :cond_5

    neg-float v13, v13

    .line 2106
    :cond_5
    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v11, v9

    invoke-static {v15, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    int-to-float v15, v14

    mul-float/2addr v13, v15

    .line 2110
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-long v7, v13

    const-wide/32 v17, 0x3b9aca00

    mul-long v7, v7, v17

    int-to-long v13, v14

    div-long/2addr v7, v13

    .line 2112
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2114
    new-instance v10, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v10, v11, v4, v7, v8}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2060
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 3065
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "fileSizeSuffix"

    .line 3066
    invoke-virtual {v7, v8, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    .line 2061
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v10, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v7, v6, v9

    iget-object v7, v10, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v7, v6, v12

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-nez v3, :cond_6

    .line 57
    iput v9, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->c:I

    goto :goto_4

    :cond_6
    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    .line 59
    div-long v1, v1, p3

    long-to-int v1, v1

    iput v1, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->c:I

    .line 61
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const v0, 0x102000d

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->b:Landroid/widget/ProgressBar;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a()V

    .line 76
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
