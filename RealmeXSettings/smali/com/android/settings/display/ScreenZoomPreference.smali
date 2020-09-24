.class public Lcom/android/settings/display/ScreenZoomPreference;
.super Landroidx/preference/Preference;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404a8

    const v1, 0x101008e

    .line 34
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance p2, Lcom/android/settingslib/f/b;

    invoke-direct {p2, p1}, Lcom/android/settingslib/f/b;-><init>(Landroid/content/Context;)V

    .line 1185
    iget p1, p2, Lcom/android/settingslib/f/b;->e:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenZoomPreference;->setVisible(Z)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenZoomPreference;->setEnabled(Z)V

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2177
    iget-object p1, p2, Lcom/android/settingslib/f/b;->b:[Ljava/lang/String;

    .line 2185
    iget p2, p2, Lcom/android/settingslib/f/b;->e:I

    .line 46
    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenZoomPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
