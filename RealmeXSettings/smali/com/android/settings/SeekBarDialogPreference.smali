.class public Lcom/android/settings/SeekBarDialogPreference;
.super Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
.source "SeekBarDialogPreference.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d025a

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarDialogPreference;->setDialogLayoutResource(I)V

    const p1, 0x104000a

    .line 1053
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarDialogPreference;->setPositiveButtonText(I)V

    const/high16 p1, 0x1040000

    .line 1054
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarDialogPreference;->setNegativeButtonText(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/SeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SeekBarDialogPreference;->a:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Landroid/view/View;)V

    const v0, 0x1020006

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/android/settings/SeekBarDialogPreference;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
