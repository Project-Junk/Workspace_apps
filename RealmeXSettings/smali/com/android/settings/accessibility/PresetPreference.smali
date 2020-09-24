.class public Lcom/android/settings/accessibility/PresetPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "PresetPreference.java"


# instance fields
.field private final a:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d018b

    .line 37
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->setDialogLayoutResource(I)V

    const p2, 0x7f0d0287

    .line 1081
    iput p2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->d:I

    const-string p2, "captioning"

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/PresetPreference;->a:Landroid/view/accessibility/CaptioningManager;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;I)V
    .locals 4

    const v0, 0x7f0a0504

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04ff

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    .line 1133
    iget-object v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->b:[I

    aget v2, v2, p2

    .line 55
    iget-object v3, p0, Lcom/android/settings/accessibility/PresetPreference;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v3, v1, v0, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PresetPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v0, v2

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->a(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    const v0, 0x7f0a0687

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PresetPreference;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 47
    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
