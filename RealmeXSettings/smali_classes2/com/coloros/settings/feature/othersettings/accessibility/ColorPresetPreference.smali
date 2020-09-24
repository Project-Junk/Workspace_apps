.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorPresetPreference;
.super Lcom/android/settings/accessibility/PresetPreference;
.source "ColorPresetPreference.java"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/PresetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x6

    .line 27
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorPresetPreference;->a:[I

    const p1, 0x7f0d018c

    .line 34
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorPresetPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f0d00cf

    .line 1081
    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->d:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080966
        0x7f080967
        0x7f080968
        0x7f080969
        0x7f08096a
        0x7f08096b
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 3

    .line 1133
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->b:[I

    aget v0, v0, p2

    const v1, 0x7f0a04ff

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorPresetPreference;->a:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorPresetPreference;->a(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    const v1, 0x7f0a0687

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorPresetPreference;->a()I

    move-result p2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
