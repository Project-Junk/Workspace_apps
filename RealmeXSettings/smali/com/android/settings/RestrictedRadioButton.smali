.class public Lcom/android/settings/RestrictedRadioButton;
.super Landroid/widget/RadioButton;
.source "RestrictedRadioButton.java"


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/android/settingslib/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "com.android.internal.R.attr.radioButtonStyle"

    .line 41
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->a:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/RestrictedRadioButton;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/RestrictedRadioButton;->c:Lcom/android/settingslib/g$a;

    invoke-static {v0, v1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    invoke-super {p0}, Landroid/widget/RadioButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/g$a;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->c:Lcom/android/settingslib/g$a;

    .line 66
    iget-boolean p1, p0, Lcom/android/settings/RestrictedRadioButton;->a:Z

    if-eq p1, v0, :cond_2

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->a:Z

    .line 68
    iget-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->b:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->a:Z

    invoke-static {p1, p0, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 70
    iget-boolean p1, p0, Lcom/android/settings/RestrictedRadioButton;->a:Z

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/RestrictedRadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/RestrictedRadioButton;->b:Landroid/content/Context;

    const v1, 0x7f0601d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RestrictedRadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_2
    return-void
.end method
